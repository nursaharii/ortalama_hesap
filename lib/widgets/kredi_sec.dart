// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ortalama_hesap/contants/app_constants.dart';
import 'package:ortalama_hesap/helper/data_helper.dart';

class KrediSec extends StatefulWidget {
  final Function krediSecildi;
  KrediSec({required this.krediSecildi, Key? key}) : super(key: key);

  @override
  _KrediSecState createState() => _KrediSecState();
}

class _KrediSecState extends State<KrediSec> {
  int? kredi = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Sabitler.primaryCol.shade200,
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButton<int>(
        value: kredi,
        onChanged: (deger) {
          setState(() {
            kredi = deger;
            widget.krediSecildi(kredi);
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: DataHelper.tumKrediler(),
      ),
    );
  }
}
