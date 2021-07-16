import 'package:flutter/material.dart';
import 'package:kaplumbaga/core/constants.dart';

class Iletisim extends StatelessWidget {
  const Iletisim({Key? key}) : super(key: key);

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
            Expanded(child: sayfa()),
          ],
        ),
      ),
    );
  }
}

Widget sayfa() {
  return Container(
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
      // alignment: Alignment.topCenter,
      color: Colors.purple, //kalkacak
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Row(
          children: [
            mailyaz(),
            Expanded(
              child: sosyalmedya(),
            ),
          ],
        ),
      ));
}

Widget mailyaz() {
  return Container(
    color: Colors.amber, //kalkacak
    width: 1000,
    child: Column(
      children: [
        Container(
          width: 1000,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Container(
            width: 1000,
            height: 300,
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: _buildTextComposer2(),
          ),
        ),
        Container(
          height: 15,
        ),
        Container(
          width: 1000,
          height: 471,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Container(
            width: 1000,
            height: 471,
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: _buildTextComposer(),
          ),
        ),
      ],
    ),
  );
}

Widget _buildTextComposer() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextField(
      decoration:
          InputDecoration.collapsed(hintText: 'Yazmak istediğiniz şeyler...'),
    ),
  );
}

Widget _buildTextComposer2() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextField(
      decoration: InputDecoration.collapsed(hintText: 'E-mail adresiniz...'),
    ),
  );
}

Widget sosyalmedya() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(
      color: Colors.black,
      width: 1,
    )),
  );
}
