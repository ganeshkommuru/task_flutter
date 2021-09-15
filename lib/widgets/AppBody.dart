import 'package:flutter/material.dart';
import 'package:landing_page_task/containers/dataBalanceContainer.dart';
import 'package:landing_page_task/provider/providerBalance.dart';
import 'package:landing_page_task/widgets/FindOutMore.dart';
import 'package:landing_page_task/widgets/GlobeRewards.dart';
import 'package:landing_page_task/widgets/LatestPromos.dart';
import 'package:landing_page_task/widgets/Purchase.dart';
import 'package:landing_page_task/widgets/RoamingPlans.dart';
import 'package:landing_page_task/widgets/SpecialPromos.dart';
import 'package:landing_page_task/widgets/NumberSelect.dart';
import 'package:landing_page_task/widgets/SideScroll.dart';
import 'package:landing_page_task/widgets/Subscriptions.dart';
import 'package:provider/provider.dart';

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    //return ChangeNotifierProvider(
    //    create: (context) => NewData(),
    //    builder: (context, child) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            NumberSelect(),
            //DataBalanceContainer(),
            SideScroll(),
            SpecialPromos(),
            LatestPromos(),
            RoamingPlans(),
            GlobeRewards(),
            Purchase(),
            FindOutMore(),
            Subscriptions(),
          ],
        ),
      ),
    );
    // });
  }
}
