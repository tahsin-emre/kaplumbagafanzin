import 'package:flutter/material.dart';
import 'package:kaplumbaga/anasayfa/anasayfa.dart';
import 'package:kaplumbaga/homeWidgets.dart';
import 'package:kaplumbaga/ekibimiz/ekibimiz.dart';
import 'package:kaplumbaga/galeri/galeri.dart';
import 'package:kaplumbaga/iletisim/iletisim.dart';
import 'package:kaplumbaga/okulumuz/okulumuz.dart';
import 'package:kaplumbaga/sayilar/sayilar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  static late final TabController tabcontroller;
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Home.tabcontroller =
        TabController(length: HomeWidgets.tabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return info.deviceScreenType == DeviceScreenType.desktop
            ? Scaffold(body: desktop())
            : Scaffold(
                body: mobile(),
                drawer: HomeWidgets.buildDrawer,
                key: Home.scaffoldKey);
      },
    );
  }

  Widget desktop() {
    return Column(
      children: [
        HomeWidgets.header(true),
        HomeWidgets.bar,
        Expanded(child: body()),
        //footer(),
      ],
    );
  }

  Widget mobile() {
    return Column(
      children: [
        Expanded(child: body()),
        //footer(),
      ],
    );
  }

  Widget body() {
    return TabBarView(
      controller: Home.tabcontroller,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Anasayfa(),
        Sayilarimiz(),
        Okulumuz(),
        Galeri(),
        Ekibimiz(),
        Iletisim(),
      ],
    );
  }

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
  /*Footer sadece sayfanın en altında sabit bir şekilde olmalı, instagram kısmı
  dahil olmak üzere sayfanın en altına gelindiğinde footer ancak öyle gözükmeli */

}
