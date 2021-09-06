import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class CardEvent_2 extends StatelessWidget {
  const CardEvent_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 63,
      decoration: BoxDecoration(
        color: AppColors.event_color,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: AppColors.white,
            blurRadius: 6.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 0.0), // shadow direction: bottom right
          )
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(height: 28),
          Text(
            AppStrings.event_2,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w600,
              fontSize: 9,
              color: AppColors.white.withOpacity(0.8),

            ),
          ),
          Text(
            AppStrings.event_2_time,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.white,

            ),
          ),
        ],
      ),

    );
  }
}
