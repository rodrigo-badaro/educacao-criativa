import 'package:educacao_criativa/services/notification/notification_model.dart';

abstract class NotificationState {
  List<NotificationModel> notificacoes;

  NotificationState({
    required this.notificacoes,
  });
}

class NotificationInitialState extends NotificationState {
  NotificationInitialState()
      : super(
          notificacoes: [],
        );
}

class NotificationSuccessState extends NotificationState {
  NotificationSuccessState({required super.notificacoes});
}

class NotificationErrorState extends NotificationState {
  NotificationErrorState()
      : super(
          notificacoes: [],
        );
}
