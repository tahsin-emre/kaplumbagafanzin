import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kaplumbaga/homeWidgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Iletisim extends StatelessWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }
}

Widget desktop() {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Center(child: iletisimFormu()),
  );
}

Widget mobile() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: ListView(
      children: [
        HomeWidgets.header(false),
        Divider(),
        Center(child: iletisimFormu())
      ],
    ),
  );
}

Widget iletisimFormu() {
  return Container(
      width: 1000,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
                child: _buildTextComposer2('İsminiz'),
              ),
            ),
            SizedBox(height: 15),
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
                child: _buildTextComposer2('E-mail adresiniz...'),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 1000,
              height: 471,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 1)),
              child: Container(
                width: 1000,
                height: 471,
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                child: _buildTextComposer('Yazmak istediğiniz şeyler...'),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text(
                  'Gönder',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ));
}

Widget _buildTextComposer(String hint) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      selectionWidthStyle: BoxWidthStyle.tight,
      decoration: InputDecoration.collapsed(hintText: hint),
    ),
  );
}

Widget _buildTextComposer2(String hint) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextField(
      decoration: InputDecoration.collapsed(hintText: hint),
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
