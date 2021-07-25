import 'package:flutter/material.dart';
import 'package:kaplumbaga/homeWidgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Ekibimiz extends StatelessWidget {
  const Ekibimiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    });
  }

  Widget desktop() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Center(child: Text('Ekimibimiz')),
    );
  }

  Widget mobile() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: ListView(
        children: [
          HomeWidgets.header(false),
          Divider(),
          Center(child: Text('Ekimibimiz'))
        ],
      ),
    );
  }
}
