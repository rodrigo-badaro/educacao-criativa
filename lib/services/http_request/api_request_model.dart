import 'dart:convert';

import 'package:educacao_criativa/models/model_types.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: requestApiTypeId)
class ApiRequestModel extends HiveObject {
  int pagina;
  int totalPaginas;
  List<dynamic> registros;

  ApiRequestModel({
    required this.pagina,
    required this.totalPaginas,
    required this.registros,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagina': pagina,
      'totalPaginas': totalPaginas,
      'registros': registros,
    };
  }

  factory ApiRequestModel.fromMap(Map<String, dynamic> map) {
    return ApiRequestModel(
      pagina: map['pagina'] as int,
      totalPaginas: map['totalPaginas'] as int,
      registros: List.generate(map['registros'].length, (index) => map['registros'][index]),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiRequestModel.fromJson(String source) => ApiRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
