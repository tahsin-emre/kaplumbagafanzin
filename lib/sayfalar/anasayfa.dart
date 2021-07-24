import 'package:flutter/material.dart';
import 'package:kaplumbaga/core/constants.dart';
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
          Expanded(child: gonderiler(false)),
          SizedBox(width: 10),
          instagram(),
        ],
      ),
    );
  }

  Widget mobile() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          gonderiler(true),
          SizedBox(height: 10),
          instagram(),
        ],
      ),
    );
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

  Widget gonderiler(bool ismobile) {
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
              row(ismobile),
              row(ismobile),
              row(ismobile),
              row(ismobile),
            ],
          ),
        ),
      ),

      // child: Center(
      //   child: Text('GÖNDERİLER'),
      // ),
    );
  }

  Widget row(bool ismobile) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [mypost(), ismobile ? Container() : mypost()]),
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
                child: Text('Yazı', style: ktextstyle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
