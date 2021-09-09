import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/dataBalanceModel.dart';
import 'package:landing_page_task/core/services/dataBalanceServices.dart';
import 'package:landing_page_task/widgets/BalanceCardsList.dart';
import 'package:landing_page_task/widgets/CardSelected.dart';

class DataBalanceContainer extends StatefulWidget {
  const DataBalanceContainer({Key? key}) : super(key: key);

  @override
  _DataBalanceContainerState createState() => _DataBalanceContainerState();
}

class _DataBalanceContainerState extends State<DataBalanceContainer> {
  late Future dataBalanceValue;
  @override
  void initState() {
    super.initState();
    DashboardService dataBalance = DashboardService();
    dataBalanceValue = dataBalance.getDataBalanceDetails(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dataBalanceValue,
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
            return BalanceCardsList(dataBalance: data.databalancecard);
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
