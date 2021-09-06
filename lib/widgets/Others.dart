import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/Others_1.dart';
import 'package:landing_page_task/widgets/Others_2.dart';

class Others extends StatelessWidget {
  const Others({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              SizedBox(width: 4),
              Text(
                AppStrings.etc,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  letterSpacing: 0.16,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Others_1(),
                SizedBox(width: 10),
                Others_2(),
                SizedBox(width: 10),
                Others_1(),
                SizedBox(width: 10),
                Others_2(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
