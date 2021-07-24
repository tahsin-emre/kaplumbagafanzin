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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  void initState() {
    _tabcontroller =
        TabController(length: tabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, info) {
        return info.deviceScreenType == DeviceScreenType.desktop
            ? Scaffold(body: desktop())
            : Scaffold(body: mobile(), drawer: buildDrawer, key: _scaffoldKey);
      },
    );
  }

  Column desktop() {
    return Column(
      children: [
        header(true),
        bar(),
        Expanded(child: body(false)),
        //footer(),
      ],
    );
  }

  ListView mobile() {
    return ListView(
      children: [
        header(false),
        body(true),
        //footer(),
      ],
    );
  }

  Widget header(bool isDesk) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              isDesk
                  ? SizedBox(width: 0.1)
                  : Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                          onTap: () => _scaffoldKey.currentState!.openDrawer(),
                          child: Icon(Icons.menu, size: 35)),
                    ),
              InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {
                    _tabcontroller.index = 0;
                  },
                  child: Image.asset('assets/logo.png', fit: BoxFit.fitHeight)),
            ],
          ),
          isDesk
              ? Container(
                  child: Row(children: [
                    InkWell(
                        onTap: () {
                          var uri = Uri(
                              scheme: 'https',
                              path: 'instagram.com/kaplumbagafanzin');
                          launch(uri.toString());
                        },
                        child: FaIcon(FontAwesomeIcons.instagram, size: 40)),
                    SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                          var uri = Uri(
                              scheme: 'mailto',
                              path: 'kaplumbagafanzin@hotmail.com');
                          launch(uri.toString());
                        },
                        child: FaIcon(FontAwesomeIcons.envelope, size: 40)),
                    SizedBox(width: 20)
                  ]),
                )
              : Container()
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

  Widget body(bool isMobile) {
    return TabBarView(
      controller: _tabcontroller,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Anasayfa(isMobile),
        Sayilarimiz(),
        Okulumuz(),
        Galeri(),
        Ekibimiz(),
        Iletisim(),
      ],
    );
  }

  Drawer get buildDrawer {
    return Drawer(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                _tabcontroller.index = 0;
                _scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('ANASAYFA'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                _tabcontroller.index = 1;
                _scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('SAYILARIMIZ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                _tabcontroller.index = 2;
                _scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('OKULUMUZ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                _tabcontroller.index = 3;
                _scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('KAPLUMBAĞA TARİHİ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                _tabcontroller.index = 4;
                _scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('EKİBİMİZ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                _tabcontroller.index = 5;
                _scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('İLETİŞİM'),
            ),
          ],
        ),
        Container(
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
            ]),
          ),
        )
      ]),
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
