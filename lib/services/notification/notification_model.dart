import 'package:flutter/material.dart';

class NotificationModel {
  String? id;
  bool? loading;
  final IconData? icon;
  final String message;
  final ValueNotifier<String>? messageListenable;
  final String state;
  final Widget? action;

  NotificationModel({
    this.id,
    this.loading = false,
    this.icon,
    required this.message,
    this.messageListenable,
    required this.state,
    required this.action,
  });
}
