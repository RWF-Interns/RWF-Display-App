import 'package:RWF/screens/grinding1.dart';
import 'package:RWF/screens/grinding2.dart';
import 'package:RWF/screens/grinding3.dart';
import 'package:RWF/screens/homepage.dart';
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

void main() => runApp(MyApp());

var url = 'https://9f0488506560.ngrok.io';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rail Wheel Factory',
      initialRoute: '/',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF5B58E3),
        ),
        accentColor: Color(0xFF5B58E3),
      ),
      routes: {
        '/': (context) => HomePage(),
        HomePage.routeName: (context) => HomePage(),
        Xc1.routeName: (context) => Xc1(),
        Xc2.routeName: (context) => Xc2(),
        Xc3.routeName: (context) => Xc3(),
        XcProducingMoulds1.routeName: (context) => XcProducingMoulds1(),
        XcProducingMoulds2.routeName: (context) => XcProducingMoulds2(),
        XcProducingMoulds3.routeName: (context) => XcProducingMoulds3(),
        Grinding1.routeName: (context) => Grinding1(),
        Grinding2.routeName: (context) => Grinding2(),
        Grinding3.routeName: (context) => Grinding3(),
        Offload1.routeName: (context) => Offload1(),
        Offload2.routeName: (context) => Offload2(),
        Offload3.routeName: (context) => Offload3(),
        Rht1.routeName: (context) => Rht1(),
        Rht2.routeName: (context) => Rht2(),
        Rht3.routeName: (context) => Rht3(),
      },
    );
  }
}
