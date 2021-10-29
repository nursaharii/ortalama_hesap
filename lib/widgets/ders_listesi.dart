// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ortalama_hesap/contants/app_constants.dart';
import 'package:ortalama_hesap/helper/data_helper.dart';
import 'package:ortalama_hesap/model/ders.dart';
import 'dart:math' as math;

class DersListesi extends StatelessWidget {
  final Function onDismiss;
  const DersListesi({required this.onDismiss, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumDersler;
    return tumDersler.isNotEmpty
        ? ListView.builder(
            itemCount: tumDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
                onDismissed: (a) {
                  onDismiss(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(tumDersler[index].ad),
                      leading: CircleAvatar(
                        backgroundColor: Color.fromRGBO(
                          math.Random().nextInt(255),
                          math.Random().nextInt(255),
                          math.Random().nextInt(255),
                          0.4,
                        ),
                        child: Text(
                          (tumDersler[index].kredi * tumDersler[index].puan)
                              .toStringAsFixed(0),
                          style: Sabitler.dersStyle,
                        ),
                      ),
                      subtitle:
                          Text('Kredi Değeri : ${tumDersler[index].kredi} '
                              '\n'
                              'Not Değeri : ${tumDersler[index].puan}'),
                    ),
                  ),
                ),
              );
            })
        : Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'Ders Ekleyiniz...',
              style: Sabitler.dersStyle,
            ));
  }
}
