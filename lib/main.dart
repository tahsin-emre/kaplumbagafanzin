import 'package:flutter/material.dart';
import 'package:kaplumbaga/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaplumbağa Fanzin',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
