import 'package:flutter/material.dart';
import 'package:kaplumbaga/core/constants.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
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
            instagram(),
          ],
        ),
      ),
    );
  }
}

Widget instagram() {
  return Container(
      // alignment: Alignment.left,
      width: 400,
      height: 1000,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Center(
        child: Text('instagram'),
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
        child: Column(
          children: [
            row(),
            row(),
            row(),
            row(),
          ],
        ),
      ),
    ),

    // child: Center(
    //   child: Text('GÖNDERİLER'),
    // ),
  );
}

Widget row() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [mypost(), mypost()]),
  );
}

Widget mypost() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      padding: const EdgeInsets.all(20),
      width: 450,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Center(
              child: Text('Yazo', style: kboldstyle),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 88,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: Center(
              child: Text('Yazı', style: ktextstyle),
            ),
          )
        ],
      ),
    ),
  );
}
