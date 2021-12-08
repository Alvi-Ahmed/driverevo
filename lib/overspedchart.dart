import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:driverevo/overspeedList.dart';

class OverspedChart extends StatelessWidget {
  final List<OverspeedList> data;

  OverspedChart({required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<OverspeedList, String>> series = [
      charts.Series(
          id: "Total",
          data: data,
          domainFn: (OverspeedList series, _) => series.date,
          measureFn: (OverspeedList series, _) => series.total,
          colorFn: (OverspeedList series, _) => series.barColor)
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Bar chart of dat vs overspeed count",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
