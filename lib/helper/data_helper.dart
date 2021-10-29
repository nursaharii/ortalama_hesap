import 'package:flutter/material.dart';
import 'package:ortalama_hesap/model/ders.dart';

class DataHelper {
  static List<Ders> tumDersler = [];
  static dersEkle(Ders ders) {
    tumDersler.add(ders);
  }

  static List<String> _harfler() =>
      ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FF'];
  static List<int> _tumKrediler() {
    return List.generate(11, (index) => index).toList();
  }

  static ortalamaHesap() {
    double toplamNot = 0;
    double toplamKredi = 0;

    for (var element in tumDersler) {
      toplamNot = toplamNot + (element.kredi * element.puan);
      toplamKredi += element.kredi;
    }
    return toplamNot / toplamKredi;
  }

  static double? _harfCevir(String harf) {
    switch (harf) {
      case 'AA':
        return 4;

      case 'BA':
        return 3.5;

      case 'BB':
        return 3;

      case 'CB':
        return 2.5;

      case 'CC':
        return 2;

      case 'DC':
        return 1.5;

      case 'DD':
        return 1;
      case 'FF':
        return 0;
      default:
    }
  }

  static List<DropdownMenuItem<double>> tumDersHarfleri() {
    return _harfler()
        .map((e) => DropdownMenuItem(
              child: Text(e),
              value: _harfCevir(e),
            ))
        .toList();
  }

  static List<DropdownMenuItem<int>> tumKrediler() {
    return _tumKrediler()
        .map((e) => DropdownMenuItem(
              child: Text('$e'),
              value: e,
            ))
        .toList();
  }
}
