import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';

class NumberSelect extends StatelessWidget {
  const NumberSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'My Prepaid',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xA34F4F4F),

            ),
          ),
          SizedBox(height: 6.0),
          Row(
            children: <Widget>[
              Text(
                '092787368820',
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  color: AppColors.black,
                ),
              ),
              SizedBox(width: 6.0),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 20.0,
                color: AppColors.black,
              ),
              Spacer(),
              Icon(
                Icons.add_outlined,
                size: 20.0,
                color: AppColors.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}
