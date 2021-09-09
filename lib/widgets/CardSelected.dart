import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/dataBalanceModel.dart';
import 'package:landing_page_task/resources/images.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class CardSelected extends StatelessWidget {
  //const CardSelected({Key? key}) : super(key: key);

  final dynamic dataBalance;
  CardSelected({required this.dataBalance});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 180,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [AppColors.gd_start, AppColors.gd_end]),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 14.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(dataBalance.image),
            radius: 13,
          ),
          SizedBox(height: 24),
          Text(
            dataBalance.balancetype,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(height: 4),
          Text(
            dataBalance.price,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: AppColors.white,
              letterSpacing: 0.95,
            ),
          ),
          SizedBox(height: 30),
          Text(
            dataBalance.validity,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: AppColors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
