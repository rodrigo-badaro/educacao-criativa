import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class LogoNome extends StatelessWidget {
  double size = 200;

  LogoNome({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/logo_espaco_maker.svg',
      width: size,
      fit: BoxFit.contain,
    );
  }
}
