import 'package:flutter/material.dart';
import 'package:kaplumbaga/anasayfa.dart';
import 'package:kaplumbaga/galeri.dart';
import 'package:kaplumbaga/sayilarimiz.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        header(),
        bar(),
        Expanded(child: body()),
        // footer(),
      ],
    ));
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }

  Widget bar() {
    return Container(
      child: TabBar(
        indicatorPadding: EdgeInsets.all(0),
        indicatorWeight: 2,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        controller: _tabcontroller,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        tabs: [
          Tab(
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('ANASAYFA')),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('SAYILARIMIZ')),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('GALERİ')),
            ),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return TabBarView(
      controller: _tabcontroller,
      physics: NeverScrollableScrollPhysics(),
      children: [Anasayfa(), Sayilarimiz(), Galeri()],
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
}