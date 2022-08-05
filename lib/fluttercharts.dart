import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class FlutterCharts extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  FlutterCharts({Key? key}) : super(key: key);

  @override
  FlutterChartsState createState() => FlutterChartsState();
}

class FlutterChartsState extends State<FlutterCharts> {
  List<_AnimalsData> data = [
    _AnimalsData('Cuvier Beaked Whale', 10800),
    _AnimalsData('Weddell Seal', 3600),
    _AnimalsData('Dugong', 2460),
    _AnimalsData('Polar Bear', 1200),
    _AnimalsData('Marine Iguana', 1800)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:Color.fromARGB(255, 152, 187, 205),
        appBar: AppBar(
          title: const Text('Flutter charts UI by Ktech '),
          backgroundColor: Colors.lime,
          centerTitle:true,
        ),
        body: SfCircularChart(
           
            // Chart title
            title: ChartTitle(text: 'How long animals can hold their breath ',)
          ,
            // Enable legend
           legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.wrap),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <CircularSeries<_AnimalsData, String>>[
              DoughnutSeries<_AnimalsData, String>(
                  dataSource: data,
                  xValueMapper: (_AnimalsData Animals, _) => Animals.year,
                  yValueMapper: (_AnimalsData Animals, _) => Animals.animals,
                  name: 'Animals',
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]));
  }
}

class _AnimalsData {
  _AnimalsData(this.year, this.animals);

  final String year;
  final double animals;
}