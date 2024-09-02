import 'dart:async';

import 'package:flutter/material.dart';

abstract class NotificationEvent {}

class LoadNotificationEvent extends NotificationEvent {
  LoadNotificationEvent();
}

class RemoveNotificationEvent extends NotificationEvent {
  String id;

  RemoveNotificationEvent({
    required this.id,
  });
}

class InfoNotificationEvent extends NotificationEvent {
  String message;
  IconData icon;
  Duration? timeout;
  Widget? action;

  InfoNotificationEvent({
    required this.message,
    required this.icon,
    this.timeout,
    this.action,
  });
}

class LoadingNotificationEvent extends NotificationEvent {
  String? message;
  ValueNotifier<String>? messageListenable;
  Completer completer;

  LoadingNotificationEvent({
    required this.completer,
    this.message,
    this.messageListenable,
  });
}
