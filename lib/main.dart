import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kaplumbağa Fanzin',
        home: Scaffold(
            body: Column(
          children: [
            header(),
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
          )
        ],
      ),
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
