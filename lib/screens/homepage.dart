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
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Rail Wheel Factory"),
                accountEmail: Text("rw.indianrailways.gov.in"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F6a%2F72%2F4b%2F6a724b9501764fd83a4abcd37b58144d.png&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F268456827773924376%2F&docid=mJaLliyob-VRTM&tbnid=HF17wRH23uepjM%3A&vet=1&w=2145&h=2145&source=sh%2Fx%2Fim"),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F6a%2F72%2F4b%2F6a724b9501764fd83a4abcd37b58144d.png&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F268456827773924376%2F&docid=mJaLliyob-VRTM&tbnid=HF17wRH23uepjM%3A&vet=1&w=2145&h=2145&source=sh%2Fx%2Fim"))),
              ),
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
