import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_repository.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_state.dart';
import 'package:educacao_criativa/services/notification/notification_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _notificationRepository = NotificationRepository();

  NotificationBloc() : super(NotificationInitialState()) {
    on<LoadNotificationEvent>((event, emit) {
      List<NotificationModel> notificacoes = _notificationRepository.notificacoes;

      emit(NotificationSuccessState(notificacoes: notificacoes));
    });

    on<RemoveNotificationEvent>((event, emit) {
      List<NotificationModel> notificacoes = _notificationRepository.removeNotification(event.id);
      emit(NotificationSuccessState(notificacoes: notificacoes));
    });

    on<LoadingNotificationEvent>((event, emit) async {
      NotificationModel notificacao = _notificationRepository.insertLoadingNotificaton(message: event.message, messageListenable: event.messageListenable);
      List<NotificationModel> notificacoes = _notificationRepository.notificacoes;
      emit(NotificationSuccessState(notificacoes: notificacoes));

      await Future.wait([event.completer.future]).then((value) {
        notificacoes = _notificationRepository.removeNotification(notificacao.id!);
        emit(NotificationSuccessState(notificacoes: notificacoes));
      }, onError: (val) {
        notificacoes = _notificationRepository.removeNotification(notificacao.id!);
        emit(NotificationSuccessState(notificacoes: notificacoes));
      });
    });

    on<InfoNotificationEvent>((event, emit) async {
      NotificationModel notificacao = _notificationRepository.insertNotificaton(
        event.message,
        event.icon,
        event.action,
      );

      List<NotificationModel> notificacoes = _notificationRepository.notificacoes;
      emit(NotificationSuccessState(notificacoes: notificacoes));

      Duration duration = event.timeout ?? const Duration(seconds: 4);

      await Future.delayed(duration, () {
        notificacoes = _notificationRepository.removeNotification(notificacao.id!);
        emit(NotificationSuccessState(notificacoes: notificacoes));
      });
    });
  }
}
