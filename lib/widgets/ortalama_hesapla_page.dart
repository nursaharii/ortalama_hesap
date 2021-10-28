// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:ortalama_hesap/contants/app_constants.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  _OrtalamaHesaplaPageState createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Sabitler.randCol,
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
                  flex: 2,
                  child: Container(
                    child: _buildForm(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('Form'),
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Text('List'),
                color: Sabitler.randCol,
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
            _buildTextFormField(),
            TextFormField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.access_alarm_rounded),
                ),
              ],
            )
          ],
        ));
  }

  _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration.collapsed(hintText: 'Hint Text'),
    );
  }
}
