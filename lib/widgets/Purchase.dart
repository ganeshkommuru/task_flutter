import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/aldo.dart';
import 'package:landing_page_task/widgets/spa.dart';

class Purchase extends StatelessWidget {
  const Purchase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            AppStrings.offerText,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.09,
              color: AppColors.text_purchase,
            ),
          ),
          SizedBox(height: 13),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aldo(),
                SizedBox(width: 10),
                Spa(),
                SizedBox(width: 10),
                Aldo(),
                SizedBox(width: 10),
                Spa(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
