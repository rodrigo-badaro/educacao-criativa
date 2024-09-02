import 'dart:math';

import 'package:educacao_criativa/services/notification/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationRepository {
  final List<NotificationModel> _notificacoes = [];
  List<NotificationModel> get notificacoes => _notificacoes;

  String randomID() {
    final random = Random();
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    var notificationId = String.fromCharCodes(List.generate(6, (_) => chars.codeUnitAt(random.nextInt(chars.length))));

    while (_notificacoes.any((e) => e.id == notificationId)) {
      notificationId = String.fromCharCodes(List.generate(6, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
    }

    return notificationId;
  }

  NotificationModel insertLoadingNotificaton({required String? message, ValueNotifier<String>? messageListenable}) {
    var notificacao = NotificationModel(
      id: randomID(),
      messageListenable: messageListenable,
      message: message ?? '',
      state: 'default',
      loading: true,
      action: null,
    );

    _notificacoes.add(notificacao);

    return notificacao;
  }

  NotificationModel insertNotificaton(String message, IconData icon, Widget? action) {
    var notificacao = NotificationModel(
      id: randomID(),
      message: message,
      state: 'default',
      icon: icon,
      action: action,
    );

    _notificacoes.add(notificacao);

    return notificacao;
  }

  List<NotificationModel> newNotificaton(NotificationModel notificacao) {
    notificacao.id = randomID();
    _notificacoes.add(notificacao);

    return _notificacoes;
  }

  List<NotificationModel> removeNotification(String id) {
    _notificacoes.removeWhere((element) => element.id == id);

    return _notificacoes;
  }
}
