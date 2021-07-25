import 'package:flutter/material.dart';
import 'package:kaplumbaga/homeWidgets.dart';
import 'package:kaplumbaga/sayilar/sayilarWidgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Sayilarimiz extends StatelessWidget {
  const Sayilarimiz({Key? key}) : super(key: key);
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
      child: Center(
          child: Container(
              padding: EdgeInsets.all(5.0),
              child: Container(
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    Expanded(child: SayilarWidgets.sayi()),
                    SizedBox(width: 10),
                    SayilarWidgets.sayiListesi()
                  ])))));
}

Widget mobile() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: ListView(
      children: [
        HomeWidgets.header(false),
        Divider(),
        Container(
            width: double.infinity, height: 1000, child: SayilarWidgets.sayi()),
      ],
    ),
  );
}
