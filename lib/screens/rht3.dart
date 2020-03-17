import 'dart:convert';
import 'package:RWF/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Rht3 extends StatefulWidget {
  static const routeName = 'Rht3';

  Rht3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Rht3State createState() => _Rht3State();
}

List rows = [];
List<String> colNames = [];
int noOfColumns = 0;
List<DataColumn> colHeaders = [];
List<DataRow> tuples = [];

class _Rht3State extends State<Rht3> {
  getData() async {
    colNames = [];
    //var url = 'https://c00c9f1e.ngrok.io/9';
    var response = await http.get(url+"/9");
    print('Response status: ${response.statusCode}');
    var data = response.body;
    //debugPrint(data);

    Map valueMap = json.decode(data);
    rows = valueMap['items'];
    for (int i = 0; i < rows[0].length; i++) {
      var temp = rows[0].keys.toList()[i];
      temp = temp[0].toUpperCase() + temp.substring(1);
      for (int i = 0; i < temp.length; i++) {
        if (temp[i] == '_') {
          temp = temp.substring(0, i) +
              ' ' +
              temp[i + 1].toUpperCase() +
              temp.substring(i + 2);
        }
      }
      // colNames.add(rows[0].keys.toList()[i]);
      colNames.add(temp);
    }
    print(colNames);
  }

  @override
  void initState() {
    getData();
    colHeaders = getColNames();
    super.initState();
  }

  var dummyTable = DataTable(
    columns: [
      DataColumn(label: Text('Waiting Data...')),
      DataColumn(label: Text('Waiting Data...')),
      DataColumn(label: Text('Waiting Data...')),
      DataColumn(label: Text('Waiting Data...')),
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('...')),
      ]),
      DataRow(cells: [
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('...')),
      ]),
      DataRow(cells: [
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('...')),
      ]),
    ],
  );

  var originalTable;

  @override
  Widget build(BuildContext context) {
    getColNames();
    originalTable = DataTable(
      columns: colHeaders.length > 0
          ? colHeaders
          : List<DataColumn>.generate(
              6, (i) => DataColumn(label: Text('Waiting'))),
      rows: tuples ??
          [
            DataRow(cells: [
              DataCell(Text('...')),
              DataCell(Text('...')),
              DataCell(Text('...')),
              DataCell(Text('...')),
              DataCell(Text('...')),
              DataCell(Text('...')),
            ]),
          ],
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rht3'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: noOfColumns > 0 ? originalTable : dummyTable,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState(() {});
          },
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }

  static List<DataColumn> getColNames() {
    List<DataColumn> colChildren = [];
    for (int i = 0; i < colNames.length; i++) {
      colChildren.add(DataColumn(label: Text(colNames[i]??'null')));
    }
    print(colChildren.length);
    noOfColumns = colChildren.length;
    print(colChildren);
    colHeaders = colChildren;
    getTuples();
    return colChildren;
  }

  static getTuples() {
    List<DataRow> temp = [];
    for (int i = 0; i < rows.length; i++) {
      temp.add(
        DataRow(
          cells: List<DataCell>.generate(
            rows[i].length,
            (j) => DataCell(
              Text(rows[i].values.toList()[j] ?? 'NULL'),
            ),
          ),
        ),
      );
    }
    tuples = temp;
  }
}
