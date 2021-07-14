import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [instagram(), Expanded(child: gonderiler())],
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
    child: Text('INSTAGRAM'),
  );
}

Widget gonderiler() {
  return Container(
    // alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
    ),
    child: Center(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),

    // child: Center(
    //   child: Text('GÖNDERİLER'),
    // ),
  );
}
