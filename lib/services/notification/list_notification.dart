import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_event.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_state.dart';
import 'package:educacao_criativa/services/notification/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class ListNotification extends StatefulWidget {
  const ListNotification({super.key});

  @override
  State<ListNotification> createState() => _ListNotificationState();
}

class _ListNotificationState extends State<ListNotification> {
  @override
  void initState() {
    super.initState();
    notificationBloc.add(LoadNotificationEvent());
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NotificationState>(
      stream: notificationBloc.stream,
      builder: (context, snapshot) {
        switch (notificationBloc.state) {
          case NotificationSuccessState _:
            return Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 30, left: 20),
                child: SizedBox(
                  width: 400,
                  child: IgnorePointer(
                    ignoring: notificationBloc.state.notificacoes.isEmpty,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          notificationBloc.state.notificacoes.length,
                          (index) => PointerInterceptor(
                            child: SelectionContainer.disabled(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Dismissible(
                                  key: Key(snapshot.data?.notificacoes[index].id ?? '0'),
                                  onDismissed: (direction) {
                                    notificationBloc.add(RemoveNotificationEvent(id: notificationBloc.state.notificacoes[index].id!));
                                  },
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: NotificationTile(
                                      notification: notificationBloc.state.notificacoes[index],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
