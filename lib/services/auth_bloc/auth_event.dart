import 'dart:async';

import 'package:educacao_criativa/widgets/animated_button/animated_button_cubit.dart';

abstract class AuthEvent {}

class LoginAuthEvent extends AuthEvent {
  String email;
  String password;
  bool keeplogged;
  AnimatedButtonCubit cubitButton;

  LoginAuthEvent({
    required this.email,
    required this.password,
    required this.keeplogged,
    required this.cubitButton,
  });
}

class CheckAuthEvent extends AuthEvent {
  Completer? completer;

  CheckAuthEvent({this.completer});
}

class LogOutAuthEvent extends AuthEvent {
  LogOutAuthEvent();
}
