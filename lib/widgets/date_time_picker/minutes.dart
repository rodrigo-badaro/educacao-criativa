// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Minutes extends StatelessWidget {
  final int mins;
  final Color color;
  final bool bold;

  const Minutes({
    super.key,
    required this.mins,
    required this.bold,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mins < 10 ? '0$mins' : mins.toString(),
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: bold ? 28 : 20,
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
