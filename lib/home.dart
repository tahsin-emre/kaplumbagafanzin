import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kaplumbaga/sayfalar/anasayfa.dart';
import 'package:kaplumbaga/sayfalar/ekibimiz.dart';
import 'package:kaplumbaga/sayfalar/galeri.dart';
import 'package:kaplumbaga/sayfalar/iletisim.dart';
import 'package:kaplumbaga/sayfalar/okulumuz.dart';
import 'package:kaplumbaga/sayfalar/sayilarimiz.dart';
import 'package:kaplumbaga/core/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller =
        TabController(length: tabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResponsiveBuilder(
      builder: (context, info) {
        return info.deviceScreenType == DeviceScreenType.desktop
            ? newMethod()
            : newMethod();
      },
    ));
  }

  Column newMethod() {
    return Column(
      children: [
        header(),
        bar(),
        InkWell(
            onTap: () {
              var uri = Uri(scheme: 'https', path: 'instagram.com/kaplumbagafanzin');
              launch(uri.toString());
            },
            child: FaIcon(FontAwesomeIcons.instagram, size: 40)),
        SizedBox(width: 10),
        InkWell(
            onTap: () {
              var uri = Uri(scheme: 'mailto', path: 'kaplumbagafanzin@hotmail.com');
              launch(uri.toString());
            },
            child: FaIcon(FontAwesomeIcons.envelope, size: 40)),
        Expanded(child: body()),
        //footer(),
      ],
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                _tabcontroller.index = 0;
              },
              child: Image.asset('assets/logo.png', fit: BoxFit.fitHeight)),
          Row(children: [
            InkWell(
                onTap: () {
                  var uri =
                      Uri(scheme: 'https', path: 'instagram.com/kaplumbagafanzin');
                  launch(uri.toString());
                },
                child: FaIcon(FontAwesomeIcons.instagram, size: 40)),
            SizedBox(width: 10),
            InkWell(
                onTap: () {
                  var uri =
                      Uri(scheme: 'mailto', path: 'kaplumbagafanzin@hotmail.com');
                  launch(uri.toString());
                },
                child: FaIcon(FontAwesomeIcons.envelope, size: 40)),
            SizedBox(width: 20)
          ])
        ],
      ),
    );
  }

  Widget bar() {
    return Container(
      child: TabBar(
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        indicatorPadding: EdgeInsets.all(0),
        indicatorWeight: 2,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        controller: _tabcontroller,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        tabs: tabs,
      ),
    );
  }

  Widget body() {
    return TabBarView(
      controller: _tabcontroller,
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

  List<Widget> get tabs {
    return [
      Tab(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(
            child: Text('ANASAYFA', style: kboldstyle),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(child: Text('SAYILARIMIZ', style: kboldstyle)),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(
            child: Text('OKULUMUZ', style: kboldstyle),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(
            child: Text('KAPLUMBAĞA TARİHİ', style: kboldstyle),
          ), //GALERİ
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(child: Text('EKİBİMİZ', style: kboldstyle)),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Center(child: Text('İLETİŞİM', style: kboldstyle)),
        ),
      ),
    ];
  }
}
