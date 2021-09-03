import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';

class CardDeselected extends StatelessWidget {
  const CardDeselected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        color: AppColors.white,
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
            backgroundImage: AssetImage('assets/play.png'),
            radius: 10,
          ),
          SizedBox(height: 28),
          Text(
            'Data Balance',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.text_vlight,
            ),
          ),
          SizedBox(height: 2),
          Text(
            '300 MB',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: AppColors.text_vdark,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'of 12 GB',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.text_dark,
            ),
          ),
        ],
      ),
      
    );
  }
}