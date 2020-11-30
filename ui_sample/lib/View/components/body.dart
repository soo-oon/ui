import 'package:flutter/material.dart';
import 'package:ui_sample/View/components/country_card.dart';
import 'package:ui_sample/View/components/time_in_hour_and_minute.dart';

import 'clock.dart';

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
          Spacer(),
          Clock(),
          Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CountryCard(
                    country: "null",
                    timeZone: "null",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "null",
                    period: "null"),
                CountryCard(
                    country: "null",
                    timeZone: "null",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "null",
                    period: "null"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
