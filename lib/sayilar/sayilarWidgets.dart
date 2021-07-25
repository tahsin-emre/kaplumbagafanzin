import 'package:flutter/material.dart';

class SayilarWidgets {
  static Widget sayi() {
    return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
        child: Center(child: Text('SEÇİLEN SAYI')));
  }

  static Widget sayiListesi() {
    return Container(
        width: 400,
        height: 1000,
        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
        child: Center(child: Text('SAYI LİSTESİ')));
  }
}
