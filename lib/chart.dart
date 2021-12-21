// ignore_for_file: prefer_const_constructors

import 'package:driverevo/main.dart';
import 'package:driverevo/overspedchart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:driverevo/overspeedList.dart';

class ChartPage extends StatefulWidget {
  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  final List<OverspeedList> data = [
    OverspeedList(
      date: "dec 1",
      total: 8,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 2",
      total: 4,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 3",
      total: 4,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 4",
      total: 1,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 5",
      total: 6,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 6",
      total: 3,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 7",
      total: 5,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 9",
      total: 17,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];
  final List<OverspeedList> data1 = [
    OverspeedList(
      date: "dec 1",
      total: 120,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 2",
      total: 110,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 3",
      total: 130,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 4",
      total: 130,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 5",
      total: 110,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 6",
      total: 105,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 7",
      total: 100,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: "dec 9",
      total: 155,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text("Driver Evaluation"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "Driver Name: Muid Ahmed",
              // textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Car Make & Model: Totota Saloon Corolla",
              // textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 5,
            ),
            OverspedChart(
              data: data,
              text: "Overspeed Count Vs Date",
            ),
            SizedBox(
              height: 5,
            ),
            OverspedChart(
              data: data1,
              text: "Top Speed Vs Date",
            ),
          ],
        ),
      ),
    );
  }
}
