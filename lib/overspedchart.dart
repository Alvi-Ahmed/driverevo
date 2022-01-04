import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:driverevo/overspeedList.dart';

class OverspedChart extends StatelessWidget {
  final List<OverspeedList> data;
  final String text;

  OverspedChart({required this.data, required this.text});
  // factory OverspedChart.withSampleData() {
  //   return OverspedChart(
  //     OverspeedList(),
  //     // Disable animations for image tests.
  //     animate: false,
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    List<charts.Series<OverspeedList, DateTime>> series = [
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
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Expanded(
                child: charts.TimeSeriesChart(
                  series,
                  animate: true,
                  defaultRenderer: charts.BarRendererConfig<DateTime>(),
                  defaultInteractions: true,
                  behaviors: [
                    charts.SelectNearest(),
                    charts.DomainHighlighter()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
