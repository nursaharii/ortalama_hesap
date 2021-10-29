// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ortalama_hesap/contants/app_constants.dart';
import 'package:ortalama_hesap/helper/data_helper.dart';

class HarfDegeri extends StatefulWidget {
  final Function harfSecildi;
  HarfDegeri({required this.harfSecildi, Key? key}) : super(key: key);

  @override
  _HarfDegeriState createState() => _HarfDegeriState();
}

class _HarfDegeriState extends State<HarfDegeri> {
  double? ort = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Sabitler.primaryCol.shade200,
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButton<double>(
        value: ort,
        onChanged: (deger) {
          setState(() {
            ort = deger;
            widget.harfSecildi(ort);
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: DataHelper.tumDersHarfleri(),
      ),
    );
  }
}
