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
  static BorderRadius border = BorderRadius.circular(15);

  static final TextStyle dersStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: primaryCol,
      fontStyle: FontStyle.italic);
  static final TextStyle ortalamaGecti = TextStyle(
      overflow: TextOverflow.clip,
      fontWeight: FontWeight.w900,
      fontSize: 55,
      color: Colors.green.shade900,
      fontStyle: FontStyle.italic);
  static final TextStyle ortalamaKaldi = TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 55,
      color: Colors.red.shade600,
      fontStyle: FontStyle.italic);
}
