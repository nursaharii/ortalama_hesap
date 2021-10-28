// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math' as math;

class Sabitler {
  static const primaryCol = Colors.indigo;
  static Color randCol = Color.fromRGBO(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextDouble());
  static String title = 'Ortalama Hesapla';
  static final TextStyle baslikStyle = TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 24,
      color: primaryCol,
      fontStyle: FontStyle.italic);
}
