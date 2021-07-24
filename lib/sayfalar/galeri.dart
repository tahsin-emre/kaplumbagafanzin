import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  const Galeri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: gonderiler()),
            SizedBox(width: 10),
            liste(),
          ],
        ),
      ),
    );
  }
}

Widget liste() {
  return Container(
      // alignment: Alignment.left,
      width: 200,
      height: 1000,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Center(
        child: Text('liste'),
      ));
}

Widget gonderiler() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
    // alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              baslik(),
              row(),
              row(),
              row(),
              row(),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget row() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [mypost(), mypost(), mypost(), mypost(), mypost()]),
  );
}

Widget mypost() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: const EdgeInsets.all(20),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Center(
        child: Text('Resim'),
      ),
    ),
  );
}

Widget baslik() {
  return Container(
    width: 1200,
    height: 80,
    color: Colors.purple,
    child: Center(
      child: Text('BAŞLIK YERİ İÇİ BOŞALACAK TEXT GELECEK'),
    ),
  );
}
