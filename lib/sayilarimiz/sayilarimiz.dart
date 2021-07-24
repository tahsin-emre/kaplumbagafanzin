import 'package:flutter/material.dart';

class Sayilarimiz extends StatelessWidget {
  const Sayilarimiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: sayi()),
              SizedBox(width: 10),
              sayiListesi(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sayi() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: Center(
      child: Text('SEÇİLEN SAYI'),
    ),
  );
}

Widget sayiListesi() {
  return Container(
    width: 400,
    height: 1000,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: Center(
      child: Text('SAYI LİSTESİ'),
    ),
  );
}
