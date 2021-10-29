// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ortalama_hesap/contants/app_constants.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;
  const OrtalamaGoster(
      {required this.ortalama, required this.dersSayisi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? '$dersSayisi Ders Girildi' : 'Ders Seçiniz',
          style: Sabitler.dersStyle,
        ),
        Text(
          ortalama > 0 ? ortalama.toStringAsFixed(2) : '0',
          style:
              ortalama >= 2.5 ? Sabitler.ortalamaGecti : Sabitler.ortalamaKaldi,
        ),
        Text(
          'Ortalama  ',
          style: Sabitler.dersStyle,
        )
      ],
    );
  }
}
