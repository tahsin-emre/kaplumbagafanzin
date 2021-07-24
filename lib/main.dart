import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kaplumbaga/home.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sitka'),
      debugShowCheckedModeBanner: false,
      title: 'Kaplumbağa Fanzin',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
