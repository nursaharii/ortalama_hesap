import 'package:flutter/material.dart';
import 'package:ortalama_hesap/widgets/ortalama_hesapla_page.dart';

import 'contants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dinamik Ortalama Hesapla',
      theme: ThemeData(
        primarySwatch: Sabitler.primaryCol,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OrtalamaHesaplaPage(),
    );
  }
}
