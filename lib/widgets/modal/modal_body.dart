import 'package:educacao_criativa/get.dart';
import 'package:educacao_criativa/widgets/modal/modal_listener.dart';
import 'package:flutter/material.dart';

class ModalBody extends StatefulWidget {
  const ModalBody({super.key, required this.child});
  final Widget child;

  @override
  State<ModalBody> createState() => _ModalBodyState();
}

class _ModalBodyState extends State<ModalBody> {
  ModalListener modal = getIt<ModalListener>();
  @override
  void initState() {
    super.initState();
    modal.isOpen(instances: modal.state + 1);
  }

  @override
  void dispose() {
    super.dispose();
    modal.isOpen(instances: modal.state - 1);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
