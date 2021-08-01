import 'package:flutter/material.dart';

class GaleriWidgets {
  static Widget baslik() {
    return Container(
        width: 1200,
        height: 80,
        child: Center(
            child: Text('FOTOĞRAF ALBÜMÜ BAŞLIĞI',
                style: TextStyle(fontSize: 78, fontWeight: FontWeight.w600))));
  }

  static Widget mobilbaslik() {
    return Container(
      width: 1200,
      height: 80,
      child: Center(
        child: Text(
          'FOTOĞRAF ALBÜM BAŞLIĞI',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
