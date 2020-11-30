import 'package:flutter/material.dart';
import 'package:ui_sample/View/components/time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
        ],
      ),
    );
  }
}

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
