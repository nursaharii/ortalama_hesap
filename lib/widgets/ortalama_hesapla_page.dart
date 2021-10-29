// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:ortalama_hesap/contants/app_constants.dart';
import 'package:ortalama_hesap/helper/data_helper.dart';
import 'package:ortalama_hesap/model/ders.dart';
import 'package:ortalama_hesap/widgets/ders_listesi.dart';
import 'package:ortalama_hesap/widgets/harf_sec.dart';
import 'package:ortalama_hesap/widgets/kredi_sec.dart';
import 'package:ortalama_hesap/widgets/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  _OrtalamaHesaplaPageState createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();
  double? ort = 4;
  int? kredi = 0;
  String girilenDers = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              'Ortalama Hesapla',
              style: Sabitler.baslikStyle,
            ),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: _buildForm(),
                ),
                Expanded(
                  flex: 2,
                  child: OrtalamaGoster(
                      ortalama: DataHelper.ortalamaHesap(),
                      dersSayisi: DataHelper.tumDersler.length),
                ),
              ],
            ),
            Expanded(
              child: DersListesi(
                onDismiss: (index) {
                  DataHelper.tumDersler.removeAt(index);
                  setState(() {});
                },
              ),
            )
          ],
        ));
  }

  Widget _buildForm() {
    return Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              child: _buildTextFormField(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: HarfDegeri(harfSecildi: (deger) {
                        ort = deger;
                      })),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: KrediSec(
                      krediSecildi: (deger) {
                        kredi = deger;
                      },
                    ),
                  ),
                ),
                IconButton(
                    iconSize: 30,
                    color: Sabitler.primaryCol,
                    onPressed: _dersEkle,
                    icon: Icon(Icons.arrow_forward_ios_sharp)),
              ],
            )
          ],
        ));
  }

  _buildTextFormField() {
    return TextFormField(
      onSaved: (deger) {
        setState(() {
          girilenDers = deger!;
        });
      },
      validator: (s) {
        if (s!.isEmpty) {
          return 'ders adını giriniz';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: 'Matematik',
          border: OutlineInputBorder(borderRadius: Sabitler.border),
          filled: true,
          fillColor: Sabitler.primaryCol.shade100),
    );
  }

  void _dersEkle() {
    if (formKey.currentState != null) {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        var eklenecekDers = Ders(ad: girilenDers, puan: ort!, kredi: kredi!);
        // ignore: avoid_print
        DataHelper.dersEkle(eklenecekDers);
        setState(() {});
      }
    }
  }
}
