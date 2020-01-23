import 'package:RWF/custom_widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rail Wheel Factory'),
          backgroundColor: Color(0xFF5B58E3),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              MyDrawerWidget(),
              ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
