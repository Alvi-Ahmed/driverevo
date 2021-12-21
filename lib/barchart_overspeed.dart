// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';

// class SpeedingBar extends StatelessWidget {
  

//   SpeedingBar(this.seriesList, {this.animate});

//   /// Creates a BarChart with sample data and no transition.
//   factory SpeedingBar.withSampleData() {
//     return new SpeedingBar(
//       _createSampleData(),
//       // Disable animations for image tests.
//       animate: false,
//     );
//   }
//     final List<charts.Series> seriesList;
//   final bool animate;

//   @override
//   Widget build(BuildContext context) {

//     return new charts.BarChart(
//       seriesList,
//       animate: animate,
//     );
//   }

//   /// Create one series with sample hard coded data.
//   static List<charts.Series<Overspeed, String>> _createSampleData() {
//     final data = [
//       new Overspeed('1st dec', 5),
//       new Overspeed('2nd dec', 7),
//       new Overspeed('3rd dec', 11),
//       new Overspeed('4th dec', 2),
//     ];

//     return [
//       new charts.Series<Overspeed, String>(
//         id: 'Count',
//         colorFn: (_, __) => charts.MaterialPalette.black,
//         domainFn: (Overspeed count, _) => count.date,
//         measureFn: (Overspeed count, _) => count.count,
//         data: data,
//       )
//     ];
//   }
// }

// /// Sample ordinal data type.
// class Overspeed {
//   final String date;
//   final int count;

//   Overspeed(this.date, this.count);
// }
