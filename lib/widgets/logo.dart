import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Logo extends StatelessWidget {
  double size = 200;

  Logo({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo_relatorio.png',
      width: size,
      fit: BoxFit.contain,
    );
  }
}
