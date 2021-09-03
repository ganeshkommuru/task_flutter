import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/widgets/CardDeselected.dart';
import 'package:landing_page_task/widgets/CardEvent_2.dart';
import 'package:landing_page_task/widgets/CardSelected.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/CardEvent.dart';


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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CardSelected(),
                SizedBox(width: 12),
                CardDeselected(),
                SizedBox(width: 12),
                CardDeselected(),
                SizedBox(width: 12),
                CardDeselected(),
              ],
            ),
          ),
          SizedBox(height: 27),
          Row(
            children: <Widget>[
              SizedBox(width: 6),
              Text(
                  'Recommended',
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.text_light,
                ),
              ),
              Spacer(),
              Text(
                  'View All',
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.view_all,
                ),
              ),
              SizedBox( width: 24),
            ],
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardEvent(),
                SizedBox(width: 8),
                CardEvent_2(),
                SizedBox(width: 8),
                CardEvent_2(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
