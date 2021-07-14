import 'package:flutter/material.dart';

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
      width: 500,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.black45,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    ),
  );
}
