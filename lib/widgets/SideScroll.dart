import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/containers/dataBalanceContainer.dart';
import 'package:landing_page_task/containers/recommendationContainer.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class SideScroll extends StatelessWidget {
  const SideScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 32.0),
      decoration: BoxDecoration(
        color: AppColors.scroll_color,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
          bottom: Radius.circular(0),
        ),
      ),
      child: Column(
        children: <Widget>[
          DataBalanceContainer(),
          SizedBox(height: 27),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //SizedBox(width: 6),
              Text(
                AppStrings.recommended,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.text_light,
                ),
              ),
              //Spacer(),
              Text(
                AppStrings.viewAll,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.view_all,
                ),
              ),
              //SizedBox(width: 24),
            ],
          ),
          SizedBox(height: 12),
          RecommendationContainer(),
        ],
      ),
    );
  }
}
