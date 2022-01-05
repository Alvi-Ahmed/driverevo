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
  List<OverspeedList> data = [
    OverspeedList(
      date: DateTime.utc(2021, 12, 29),
      total: 12,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 30),
      total: 1,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 31),
      total: 0,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 01, 1),
      total: 11,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 2),
      total: 10,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 3),
      total: 13,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 4),
      total: 15,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 12, 5),
      total: 16,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];
  List<OverspeedList> data1 = [
    OverspeedList(
      date: DateTime.utc(2021, 12, 29),
      total: 120,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 30),
      total: 110,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 31),
      total: 130,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 01, 1),
      total: 130,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 2),
      total: 110,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 3),
      total: 105,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 4),
      total: 100,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 12, 5),
      total: 120,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];

  List<OverspeedList> data2 = [
    OverspeedList(
      date: DateTime.utc(2021, 12, 29),
      total: 1,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 30),
      total: 11,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 31),
      total: 13,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 01, 1),
      total: 13,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 2),
      total: 11,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 3),
      total: 15,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 4),
      total: 10,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
        date: DateTime.utc(2022, 12, 5),
        total: 12,
        barColor: charts.ColorUtil.fromDartColor(primaryColor)),
  ];

  List<OverspeedList> data3 = [
    OverspeedList(
      date: DateTime.utc(2021, 12, 29),
      total: 2,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 30),
      total: 3,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2021, 12, 31),
      total: 4,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 01, 1),
      total: 5,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 2),
      total: 6,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 3),
      total: 3,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 1, 4),
      total: 2,
      barColor: charts.ColorUtil.fromDartColor(primaryColor),
    ),
    OverspeedList(
      date: DateTime.utc(2022, 12, 5),
      total: 1,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];
  List<OverspeedList> overspd = [
    // OverspeedList(
    //   date: DateTime.utc(2021, 12, 8),
    //   total: 155,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.red),
    // ),
  ];
  List<OverspeedList> topspd = [
    // OverspeedList(
    //   date: DateTime.utc(2021, 12, 8),
    //   total: 155,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.red),
    // ),
  ];
  List<OverspeedList> recklesspd = [
    // OverspeedList(
    //   date: DateTime.utc(2021, 12, 8),
    //   total: 155,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.red),
    // ),
  ];
  List<OverspeedList> fuelspd = [
    // OverspeedList(
    //   date: DateTime.utc(2021, 12, 8),
    //   total: 155,
    //   barColor: charts.ColorUtil.fromDartColor(Colors.red),
    // ),
  ];

  late DateTime xdate;
  late DateTime ydate;

  late DateTime startdate = DateTime.utc(2022, 1, 1);
  late DateTime enddate = DateTime.utc(2022, 1, 5);

  @override
  Widget build(BuildContext context) {
    // final isoverspd = data.where((OverspeedList) =>
    //     OverspeedList.date.millisecond >= startdate.millisecond &&
    //     OverspeedList.date.millisecond <= startdate.millisecond);

    // getDaysInBetween() {
    //   final int difference = startdate.difference(enddate).inDays;
    //   print(difference);
    //   return difference;
    // }
    // final overspd = List<OverspeedList>.generate(getDaysInBetween(), (i) {
    //   if (data..where((date) => false)) {

    //   }
    //   return date.add(Duration(days: i));
    // });

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
              // Text(data.elementAt(1).date.millisecondsSinceEpoch.toString()),
              // Text(startdate.millisecondsSinceEpoch.toString()),

              // ElevatedButton(onPressed: onPressed, child: child)
              DateTimePicker(
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor),
                type: DateTimePickerType.date,
                dateMask: 'yyyy, MMM dd',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2023),
                dateLabelText: 'From',
                onChanged: (val) {
                  setState(() {
                    startdate = DateTime.parse(val);
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
                dateMask: 'yyyy, MMM dd',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2023),
                dateLabelText: 'To',
                onChanged: (xyz) {
                  enddate = DateTime.parse(xyz);
                },
                validator: (xyz) {
                  print(xyz);
                  return null;
                },
                onSaved: (xyz) => print(xyz),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(secondaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ))),
                onPressed: () {
                  setState(() {
                    int i = 0;
                    do {
                      if (data.elementAt(i).date.millisecondsSinceEpoch >=
                              startdate.millisecondsSinceEpoch &&
                          data.elementAt(i).date.millisecondsSinceEpoch <=
                              enddate.millisecondsSinceEpoch) {
                        print(
                          data.elementAt(i).date,
                        );
                        // int j = 0;
                        overspd.add(
                          OverspeedList(
                              date: data.elementAt(i).date,
                              total: data.elementAt(i).total,
                              barColor: data.elementAt(i).barColor),
                        );
                        // j = j + 1;
                      }
                      i = i + 1;
                    } while (i < data.length);
                    int j = 0;
                    do {
                      if (data1.elementAt(j).date.millisecondsSinceEpoch >=
                              startdate.millisecondsSinceEpoch &&
                          data1.elementAt(j).date.millisecondsSinceEpoch <=
                              enddate.millisecondsSinceEpoch) {
                        print(
                          data1.elementAt(j).date,
                        );
                        // int j = 0;
                        topspd.add(
                          OverspeedList(
                              date: data1.elementAt(j).date,
                              total: data1.elementAt(j).total,
                              barColor: data1.elementAt(j).barColor),
                        );
                        // j = j + 1;
                      }
                      j = j + 1;
                    } while (j < data1.length);
                    int k = 0;
                    do {
                      if (data2.elementAt(k).date.millisecondsSinceEpoch >=
                              startdate.millisecondsSinceEpoch &&
                          data2.elementAt(k).date.millisecondsSinceEpoch <=
                              enddate.millisecondsSinceEpoch) {
                        print(
                          data2.elementAt(k).date,
                        );
                        // int j = 0;
                        recklesspd.add(
                          OverspeedList(
                              date: data2.elementAt(k).date,
                              total: data2.elementAt(k).total,
                              barColor: data2.elementAt(k).barColor),
                        );
                        // j = j + 1;
                      }
                      k = k + 1;
                    } while (k < data2.length);
                    int l = 0;
                    do {
                      if (data3.elementAt(l).date.millisecondsSinceEpoch >=
                              startdate.millisecondsSinceEpoch &&
                          data3.elementAt(l).date.millisecondsSinceEpoch <=
                              enddate.millisecondsSinceEpoch) {
                        print(
                          data3.elementAt(l).date,
                        );
                        // int j = 0;
                        fuelspd.add(
                          OverspeedList(
                              date: data3.elementAt(l).date,
                              total: data3.elementAt(l).total,
                              barColor: data3.elementAt(l).barColor),
                        );
                        // j = j + 1;
                      }
                      l = l + 1;
                    } while (l < data3.length);
                  });
                },
                child: Text("Set Time"),
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
                data: overspd,
                text: "Overspeed Count Vs Date",
              ),
              SizedBox(
                height: 5,
              ),
              OverspedChart(
                data: topspd,
                text: "Top Speed Vs Date",
              ),
              OverspedChart(
                data: recklesspd,
                text: "Reckless Drive Count Vs Date",
              ),
              OverspedChart(
                data: fuelspd,
                text: "Fuel Inefficient Drive Count Vs Date",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
