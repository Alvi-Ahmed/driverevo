// ignore_for_file: prefer_const_constructors

import 'package:driverevo/overspedchart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:driverevo/overspeedList.dart';

class ChartPage extends StatelessWidget {
  final List<OverspeedList> data = [
    OverspeedList(
      date: "dec 1",
      total: 8,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 2",
      total: 4,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 3",
      total: 4,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 4",
      total: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 5",
      total: 6,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 6",
      total: 3,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 7",
      total: 5,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    OverspeedList(
      date: "dec 9",
      total: 17,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Driver Evaluation"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "Driver Name: Muid Ahmed",
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Car Make & Model: Totota Saloon Corolla",
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 5,
          ),
          OverspedChart(
            data: data,
          ),
        ],
      ),
    );
  }
}
