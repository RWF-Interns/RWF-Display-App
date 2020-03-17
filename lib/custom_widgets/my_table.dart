import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 0,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text("Descr"),
          tooltip: "Descr",
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.firstName.compareTo(b.firstName));
            });
          },
        ),
        DataColumn(
          label: Text("Shift"),
          tooltip: "Shift",
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
          },
        ),
        DataColumn(
          label: Text("Line"),
          tooltip: "Line",
          numeric: true,
        ),
        DataColumn(
          label: Text("Proc"),
          tooltip: "Proc",
          numeric: true,
        ),
        DataColumn(
          label: Text("OffLd"),
          tooltip: "OffLd",
          numeric: true,
        ),
        DataColumn(
          label: Text("PP"),
          tooltip: "PP",
          numeric: true,
        ),
        DataColumn(
          label: Text("Gr"),
          tooltip: "Gr",
          numeric: true,
        ),
        DataColumn(
          label: Text("Stk"),
          tooltip: "Stk",
          numeric: true,
        ),
        DataColumn(
          label: Text("RHT"),
          tooltip: "RHT",
          numeric: true,
        ),
        DataColumn(
          label: Text("XC"),
          tooltip: "XC",
          numeric: true,
        ),
        DataColumn(
          label: Text("NoBhn"),
          tooltip: "NoBhn",
          numeric: true,
        ),
      ],
      rows: names.map((name) => DataRow(cells: [])).toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView(
        children: <Widget>[bodyData()],
      )),
    );
  }
}

class Name {
  String firstName;
  String lastName;

  Name({this.firstName, this.lastName});
}

var names = <Name>[
  Name(firstName: "zs", lastName: "dhoni"),
  Name(firstName: "virat", lastName: "kohli"),
  Name(firstName: "rohit", lastName: "sharma"),
];
