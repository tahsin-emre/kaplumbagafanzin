import 'package:flutter/material.dart';
import 'package:kaplumbaga/galeri/galeriWidgets.dart';
import 'package:kaplumbaga/homeWidgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Galeri extends StatelessWidget {
  const Galeri({Key? key}) : super(key: key);
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
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: gonderiler()),
              SizedBox(width: 10),
              liste(),
            ],
          ),
        ),
      ),
    );
  }

  Widget mobile() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        children: [
          HomeWidgets.header(false),
          Divider(),
          Center(child: gonderiler())
        ],
      ),
    );
  }

  Widget liste() {
    return Container(
        // alignment: Alignment.left,
        width: 200,
        height: 1000,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Center(
          child: Text('liste'),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GaleriWidgets.baslik(),
                Wrap(
                  spacing: 10,
                  children: [for (var i = 0; i < 40; i++) mypost()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mypost() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Center(
          child: Text('Resim'),
        ),
      ),
    );
  }
}
