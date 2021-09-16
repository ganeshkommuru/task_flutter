import 'package:flutter/material.dart';
import 'package:landing_page_task/provider/providerBalance.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/BalanceCardsList.dart';
import 'package:provider/provider.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.cornflower.withOpacity(0.5),
      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer<Balanceprovider>(builder: (context, provider, _) {
            // ignore: unnecessary_null_comparison
            if (provider.card == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              // print(provider.card.databalancecard);
              return BalanceCardsList(
                  dataBalance: provider.card.databalancecard);
              //return CircularProgressIndicator();
            }
          }),
        ],
      ),
    );
  }
}
