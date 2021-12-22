// ignore_for_file: prefer_const_constructors

import 'package:date_time_picker/date_time_picker.dart';
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
  String xdate = "";
  String ydate = "";
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
      total: 17,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    OverspeedList(
      date: "dec 9",
      total: 13,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateTimePicker(
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor),
                type: DateTimePickerType.date,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2022),
                dateLabelText: 'From',
                onChanged: (val) {
                  setState(() {
                    xdate = val;
                  });
                },
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              DateTimePicker(
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor),
                type: DateTimePickerType.date,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2022),
                dateLabelText: 'To',
                onChanged: (val) {
                  setState(() {
                    ydate = val;
                  });
                },
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Driver Name: Muid Ahmed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: secondaryColor,
                ),
                // textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Car Make & Model: Totota Saloon Corolla",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: secondaryColor,
                ),
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
      ),
    );
  }
}
