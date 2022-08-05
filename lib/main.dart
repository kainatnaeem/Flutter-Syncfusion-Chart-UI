import 'package:flutter/material.dart';
import 'package:flutterchartsbyktech/fluttercharts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Charts',
      theme: ThemeData(
      
        primarySwatch: Colors.orange,
      ),
      home: FlutterCharts(),
    );
  }
}
