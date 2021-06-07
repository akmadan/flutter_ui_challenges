import 'package:flutter/material.dart';

class AppColors {
  static Color bgcolor = Colors.indigo.shade100;

  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue.shade900.withOpacity(.2),
        spreadRadius: 2,
        offset: Offset(7, 7),
        blurRadius: 20)
  ];
}
