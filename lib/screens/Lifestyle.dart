import 'package:flutter/material.dart';
import 'package:landing_page_task/containers/dataBalanceContainer.dart';
import 'package:landing_page_task/provider/providerBalance.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/BalanceCardsList.dart';
import 'package:provider/provider.dart';
import 'package:landing_page_task/provider/providerBalance.dart';

class Lifestyle extends StatefulWidget {
  const Lifestyle({Key? key}) : super(key: key);

  @override
  _LifestyleState createState() => _LifestyleState();
}

class _LifestyleState extends State<Lifestyle> {
  late Balanceprovider balanceprovider;
  @override
  Widget build(BuildContext context) {
    balanceprovider = Provider.of<Balanceprovider>(context, listen: true);
    return Container(
      width: double.infinity,
      color: AppColors.pale_salmon,
      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Consumer<Balanceprovider>(builder: (context, provider, _) {
          //   // ignore: unnecessary_null_comparison
          //   if (provider.card == null) {
          //     return Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   } else {
          //     // print(provider.card.databalancecard);
          //     return BalanceCardsList(
          //         dataBalance: provider.card.databalancecard);
          //     //return CircularProgressIndicator();
          //   }
          // }),
          BalanceCardsList(dataBalance: balanceprovider.card.databalancecard),
        ],
      ),
    );
  }
}
