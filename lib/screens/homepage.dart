import 'package:RWF/screens/grinding1.dart';
import 'package:RWF/screens/grinding2.dart';
import 'package:RWF/screens/grinding3.dart';
import 'package:RWF/screens/offload1.dart';
import 'package:RWF/screens/offload2.dart';
import 'package:RWF/screens/offload3.dart';
import 'package:RWF/screens/rht1.dart';
import 'package:RWF/screens/rht2.dart';
import 'package:RWF/screens/rht3.dart';
import 'package:RWF/screens/xc1.dart';
import 'package:RWF/screens/xc2.dart';
import 'package:RWF/screens/xc3.dart';
import 'package:RWF/screens/xc_producing_moulds1.dart';
import 'package:RWF/screens/xc_producing_moulds2.dart';
import 'package:RWF/screens/xc_producing_moulds3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> tableNumbers = List<int>.generate(15, (i) => i);
  List<Padding> tables = List<Padding>.generate(
      15,
      (i) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan.withOpacity(0.7),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Table ${i + 1}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rail Wheel Factory'),
          backgroundColor: Color(0xFF5B58E3),
        ),
//        drawer: Drawer(
//          child: ListView(
//            children: <Widget>[
//              MyDrawerWidget(),
//            ],
//          ),
//        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('XC'),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Xc1.routeName);
                          },
                          child: tables[0],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Xc2.routeName);
                          },
                          child: tables[1],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Xc3.routeName);
                          },
                          child: tables[2],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Column(
              children: <Widget>[
                Text('XC Producing Moulds'),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, XcProducingMoulds1.routeName);
                          },
                          child: tables[3],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, XcProducingMoulds2.routeName);
                          },
                          child: tables[4],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, XcProducingMoulds3.routeName);
                          },
                          child: tables[5],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Column(
              children: <Widget>[
                Text('Grinding'),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Grinding1.routeName);
                          },
                          child: tables[6],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Grinding2.routeName);
                          },
                          child: tables[7],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Grinding3.routeName);
                          },
                          child: tables[8],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Column(
              children: <Widget>[
                Text('Offload'),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Offload1.routeName);
                          },
                          child: tables[9],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Offload2.routeName);
                          },
                          child: tables[10],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Offload3.routeName);
                          },
                          child: tables[11],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Column(
              children: <Widget>[
                Text('RHT'),
                Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Rht1.routeName);
                          },
                          child: tables[12],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Rht2.routeName);
                          },
                          child: tables[13],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Rht3.routeName);
                          },
                          child: tables[14],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
