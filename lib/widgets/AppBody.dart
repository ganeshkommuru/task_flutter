import 'package:flutter/material.dart';
import 'package:landing_page_task/widgets/FOM.dart';
import 'package:landing_page_task/widgets/GlobeRewards.dart';
import 'package:landing_page_task/widgets/LatestPromos.dart';
import 'package:landing_page_task/widgets/Purchase.dart';
import 'package:landing_page_task/widgets/RoamingPlans.dart';
import 'package:landing_page_task/widgets/SpecialPromos.dart';
import 'package:landing_page_task/widgets/NumberSelect.dart';
import 'package:landing_page_task/widgets/SideScroll.dart';
import 'package:landing_page_task/widgets/Subscriptions.dart';

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
          Purchase(),
          FOM(),
          Subscriptions(),
        ],
      ),
    );
  }
}
