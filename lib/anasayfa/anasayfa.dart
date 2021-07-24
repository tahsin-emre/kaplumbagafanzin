import 'package:flutter/material.dart';
import 'package:kaplumbaga/anasayfa/anasayfaWidgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Anasayfa extends StatefulWidget {
  late final bool isMobile;
  Anasayfa(bool isMobile);
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResponsiveBuilder(builder: (context, info) {
      return info.deviceScreenType == DeviceScreenType.desktop
          ? desktop()
          : mobile();
    }));
  }

  Widget desktop() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: gonderiler(true)),
          SizedBox(width: 10),
          AnaSayfaWidgets.instagram(),
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: gonderiler(false),
    );
  }

  Widget gonderiler(bool isDesk) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: SingleChildScrollView(
            child: Center(
                child: Wrap(
          children: [for (var i = 0; i < 10; i++) AnaSayfaWidgets.mypost()],
        ))));
  }
}
