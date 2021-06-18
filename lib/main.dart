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
            appBar: AppBar(
              centerTitle: true,
              title: Text('Kaplumbağa'),
            ),
            body: Center(child: Container(child: Text('Kaplumbağa - Hello')))));
  }
}
