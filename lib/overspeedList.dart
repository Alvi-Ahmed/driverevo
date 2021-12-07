import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class OverspeedList {
  final String date;
  final int total;
  final charts.Color barColor;

  OverspeedList(
      {required this.date, required this.total, required this.barColor});
}
