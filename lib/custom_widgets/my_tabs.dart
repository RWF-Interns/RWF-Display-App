import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Production Information'),
          backgroundColor: Color(0xFF463409),
          bottom: TabBar(
            
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(color: Color(0xFF846211)),
            isScrollable: true,
            tabs: choices.map((Choice choice) {
              return Tab(
                text: choice.title,
                icon: Icon(choice.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: choices.map((Choice choice) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final Color color;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'XC',
  ),
  const Choice(
    title: 'XCProuducingMoulds',
  ),
  const Choice(
    title: 'Offload',
  ),
  const Choice(
    title: 'Grinding',
  ),
  const Choice(
    title: 'RHT',
  ),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
          ],
        ),
      ),
    );
  }
}
