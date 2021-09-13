import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:landing_page_task/core/services/recommendationServices.dart';
import 'package:landing_page_task/widgets/BalanceCardsList.dart';
import 'package:landing_page_task/widgets/RecommendationCardsList.dart';

class RecommendationContainer extends StatefulWidget {
  const RecommendationContainer({Key? key}) : super(key: key);

  @override
  _RecommendationContainerState createState() =>
      _RecommendationContainerState();
}

class _RecommendationContainerState extends State<RecommendationContainer> {
  late Future recommendationData;
  @override
  void initState() {
    super.initState();
    RecommendationService dataBalance = RecommendationService();
    recommendationData = dataBalance.getRecommendationPlanDetails(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: recommendationData,
      builder: (context, snapshot) {
        dynamic data = snapshot.data;
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          //return CardSelected(dataBalance: snapshot.data.databalancecard);
          //var data = snapshot.data.databalancecard != null
          //    ? snapshot.data.databalancecard
          //    : null;
          if (data == null) {
            return Text('noData');
          } else {
            return RecommendationCardsList(recommendationCards: data.plans);
          }
          // return Databalancecard(
          //   dataBalance: snapshot.data.databalancecard,
          // );
        }
        return Center(
          child: Text('Error in acquiring json'),
        );
      },
    );
  }
}
