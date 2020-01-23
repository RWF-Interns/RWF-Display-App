import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage(
          'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2019/09/25/870591-railwaysindian-032618.jpg',
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
