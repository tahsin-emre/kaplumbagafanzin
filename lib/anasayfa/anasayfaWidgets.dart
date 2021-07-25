import 'package:flutter/material.dart';

class AnaSayfaWidgets {
  static Widget instagram() {
    return Container(
        width: 400,
        height: 1000,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black, width: 1)),
        child: Center(
          child: Text('instagram'),
        ));
  }

  static Widget mypost() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 450,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.grey, border: Border.all(color: Colors.black, width: 1)),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 350,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
              child: Center(
                child: Text(
                  'Yazı',
                ),
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
                child: Text('Yazı'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
