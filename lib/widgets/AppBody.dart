import 'package:flutter/material.dart';
import 'package:landing_page_task/widgets/GlobeRewards.dart';
import 'package:landing_page_task/widgets/LatestPromos.dart';
import 'package:landing_page_task/widgets/RoamingPlans.dart';
import 'package:landing_page_task/widgets/SpecialPromos.dart';
import 'package:landing_page_task/widgets/NumberSelect.dart';
import 'package:landing_page_task/widgets/SideScroll.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          NumberSelect(),
          SideScroll(),
          SpecialPromos(),
          LatestPromos(),
          RoamingPlans(),
          GlobeRewards(),
        ],
      ),
    );
  }
}