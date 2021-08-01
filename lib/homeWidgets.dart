import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kaplumbaga/core/constants.dart';
import 'package:kaplumbaga/home.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeWidgets {
  static Widget get bar {
    return Container(
      child: TabBar(
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        indicatorPadding: EdgeInsets.all(0),
        indicatorWeight: 2,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        labelColor: Colors.black,
        controller: Home.tabcontroller,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        tabs: tabs,
      ),
    );
  }

  static Widget header(bool isDesk) {
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
                          onTap: () =>
                              Home.scaffoldKey.currentState!.openDrawer(),
                          child: Icon(Icons.menu, size: 35)),
                    ),
              InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {
                    Home.tabcontroller.index = 0;
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

  static Drawer get buildDrawer {
    return Drawer(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                Home.tabcontroller.index = 0;
                Home.scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('ANASAYFA'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                Home.tabcontroller.index = 1;
                Home.scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('SAYILARIMIZ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                Home.tabcontroller.index = 2;
                Home.scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('OKULUMUZ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                Home.tabcontroller.index = 3;
                Home.scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('KAPLUMBAĞA TARİHİ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                Home.tabcontroller.index = 4;
                Home.scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('EKİBİMİZ'),
            ),
            Divider(color: Colors.black),
            ListTile(
              onTap: () {
                Home.tabcontroller.index = 5;
                Home.scaffoldKey.currentState!.openEndDrawer();
              },
              title: Text('İLETİŞİM'),
            ),
          ],
        ),
        Container(
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                ]),
          ),
        )
      ]),
    );
  }

  static List<Widget> get tabs {
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
