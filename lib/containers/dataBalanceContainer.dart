import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/dataBalanceModel.dart';
import 'package:landing_page_task/core/services/dataBalanceServices.dart';
import 'package:landing_page_task/provider/providerBalance.dart';
import 'package:landing_page_task/widgets/BalanceCardsList.dart';
import 'package:provider/provider.dart';

class DataBalanceContainer extends StatefulWidget {
  const DataBalanceContainer({Key? key}) : super(key: key);

  @override
  _DataBalanceContainerState createState() => _DataBalanceContainerState();
}

class _DataBalanceContainerState extends State<DataBalanceContainer> {
  late Future dataBalanceValue;
  late Balanceprovider balanceprovider;
  @override
  void initState() {
    super.initState();
    DashboardService dataBalance = DashboardService();
    //dataBalanceValue = dataBalance.getDataBalanceDetails(context);
    balanceprovider = Provider.of<Balanceprovider>(context, listen: false);
    Future.microtask(
      () => dataBalance.getDataBalanceDetails(),
    ).then((value) {
      return balanceprovider.setCardModel = value;
    }).catchError((error) {
      //balanceprovider.updateActionPlanError = error;
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Balanceprovider>(builder: (context, provider, _) {
      // ignore: unnecessary_null_comparison
      if (provider.card == null) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        print(provider.card.databalancecard);
        return BalanceCardsList(dataBalance: provider.card.databalancecard);
      }
    });

    // return FutureBuilder(
    //   future: dataBalanceValue,
    //   builder: (context, snapshot) {
    //     dynamic data = snapshot.data;
    //     if (!snapshot.hasData) {
    //       return Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //     if (snapshot.connectionState == ConnectionState.done &&
    //         snapshot.hasData) {
    //       //return CardSelected(dataBalance: snapshot.data.databalancecard);
    //       //var data = snapshot.data.databalancecard != null
    //       //    ? snapshot.data.databalancecard
    //       //    : null;
    //       if (data == null) {
    //         return Text('noData');
    //       } else {
    //         return BalanceCardsList(dataBalance: data.databalancecard);
    //       }
    //       // return Databalancecard(
    //       //   dataBalance: snapshot.data.databalancecard,
    //       // );
    //     }
    //     return Center(
    //       child: Text('Error in acquiring json'),
    //     );
    //   },
    // );
  }
}
