import 'package:educacao_criativa/services/notification/notification_model.dart';
import 'package:educacao_criativa/widgets/palette_colors.dart';
import 'package:educacao_criativa/widgets/typography.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.notification,
  });

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    Color? background = PaletteColors.primary;
    Color? border = PaletteColors.primary;
    Color? text = Colors.white;

    switch (notification.state) {
      case 'danger':
        background = Colors.red[50];
        border = Colors.red[700];
        text = Colors.red[900];
        break;
      case 'warning':
        background = Colors.yellow[50];
        border = Colors.yellow[800];
        text = Colors.yellow[900];
        break;
      case 'success':
        background = Colors.lightGreen[50];
        border = Colors.green[700];
        text = Colors.green[800];
        break;
      case 'info':
        background = Colors.lightBlue[50];
        border = Colors.blueAccent;
        text = Colors.blue[900];
        break;

      default:
        background = Colors.black87;
        border = Colors.black;
        text = Colors.white;
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: border!),
          color: background,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: notification.loading!
                    ? SizedBox(
                        width: 30,
                        height: 30,
                        child: LoadingAnimationWidget.fourRotatingDots(
                          color: text!,
                          size: 25,
                        ),
                      )
                    : Icon(
                        notification.icon,
                        color: text,
                      ),
              ),
              Expanded(
                child: notification.messageListenable != null
                    ? ListenableBuilder(
                        listenable: notification.messageListenable!,
                        builder: (context, child) => Paragraph(
                          notification.messageListenable?.value ?? '',
                          color: text,
                          maxLines: 10,
                        ),
                      )
                    : Paragraph(
                        notification.message,
                        color: text,
                        maxLines: 10,
                      ),
              ),
              Builder(
                builder: (context) {
                  if (notification.action != null) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SelectionContainer.disabled(child: notification.action!),
                    );
                  }

                  return const SizedBox.shrink();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
