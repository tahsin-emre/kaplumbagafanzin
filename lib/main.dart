import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kaplumbağa Fanzin',
        home: Scaffold(
            body: Column(
          children: [
            header(),
            bar(),
            Expanded(child: body()),
            footer(),
          ],
        )));
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.fitHeight,
            width: 500,
          )
        ],
      ),
    );
  }

  Widget bar() {
    return TabBar(
      indicatorColor: Colors.black,
      labelColor: Colors.black,
      controller: _controller,
      tabs: [
        Tab(
          text: 'ANASAYFA',
        ),
        Tab(
          text: 'SAYILARIMIZ',
        ),
        Tab(
          text: 'GALERİ',
        ),
      ],
    );
  }

  Widget body() {
    return Center(child: Container(child: Text('Kaplumbağa - Hello')));
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
