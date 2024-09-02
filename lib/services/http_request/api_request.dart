import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/services/http_request/bloc_firebase_registros/firebase_registros_model.dart';
import 'package:educacao_criativa/services/http_request/data_control_enum.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String apiPath = 'https://espaco-maker.jeanpsf.com/api/';

class ApiRequest {
  const ApiRequest._();

  static Future<dynamic> execute({
    required DataControlEnum dataControlEnum,
    FirebaseRegistrosModel? registro,
    bool comprime = false,
    bool withAuthentication = true,
  }) async {
    dynamic data;
    Completer? completer = Completer();

    try {
      http.Response? response;

      final path = '$apiPath${dataControlEnum.path.replaceAll(':id', registro?.id?.toString() ?? '')}';
      // final path = '$apiPath${dataControlEnum.path}';

      dynamic body = {};

      if (dataControlEnum.loadingMessage.isNotEmpty) {
        notificationBloc.add(
          LoadingNotificationEvent(
            message: dataControlEnum.loadingMessage,
            completer: completer,
          ),
        );
      }

      final Map<String, String> headers = {
        "Content-type": "application/json",
        "Accept": "application/json",
        "Access-Control-Allow-Origin": "*",
        "authorization": 'Bearer ${authBloc.state.tokens?.accessToken ?? ''}',
      };

      if (comprime) {
        headers.addAll({"Content-Encoding": "gzip"});

        final jsonBody = jsonEncode(body);
        final encoder = GZipCodec();
        List<int> compressedData = encoder.encode(utf8.encode(jsonBody));
        body = base64.encode(compressedData);
      } else {
        if (dataControlEnum.method != 'get') {
          // final firebaseID = withAuthentication ? await DBFirebase.createID(dataControlEnum: dataControlEnum, registro: registro) : '';
          body = registro?.newData;
        }
      }

      switch (dataControlEnum.method) {
        case 'get':
          response = await http.get(Uri.parse(path), headers: headers);
          break;
        case 'post':
          response = await http.post(Uri.parse(path), headers: headers, body: jsonEncode(body));
          break;
        case 'put':
          response = await http.put(Uri.parse(path), headers: headers, body: jsonEncode(body));
          break;
        case 'delete':
          response = await http.delete(Uri.parse(path), headers: headers);
          break;
        default:
          break;
      }

      if (response != null && ((response.statusCode / 100).round() == 2)) {
        dynamic fromMap = dataControlEnum.fromMapFunction;

        if (fromMap != null) {
          if (dataControlEnum.isList) {
            var list = jsonDecode((response.body));
            data = list.map((e) => fromMap(jsonDecode(jsonEncode(e)))).toList();
          } else {
            data = fromMap(jsonDecode(response.body));
          }
        } else {
          data = true;
        }
      } else {
        notificationBloc.add(
          InfoNotificationEvent(message: dataControlEnum.errorMessage, icon: Icons.dangerous),
        );
      }
    } catch (e) {
      notificationBloc.add(
        InfoNotificationEvent(message: '${dataControlEnum.errorMessage} => $e', icon: Icons.dangerous),
      );
      debugPrint('${dataControlEnum.errorMessage} => $e');
    } finally {
      completer.complete();
    }

    return data;
  }
}
