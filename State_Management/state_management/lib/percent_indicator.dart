import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator extends StatefulWidget {
  const PercentIndicator({super.key, required this.title});

  final String title;

  @override
  State<PercentIndicator> createState() => _PercentIndicatorState();
}

class _PercentIndicatorState extends State<PercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: LinearPercentIndicator(
          width: 400.0,
          lineHeight: 14.0,
          percent: 0.5,
          backgroundColor: Colors.white,
          barRadius: const Radius.circular(20),
          progressColor: Colors.green,
        ),
      ),
    );
  }
}
