import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/CardFacebook.dart';
import 'package:landing_page_task/widgets/CardSpotify.dart';

class LatestPromos extends StatelessWidget {
  LatestPromos({Key? key}) : super(key: key);

  final Shader _linearGradient_1 = LinearGradient(
    colors: [AppColors.text_st, AppColors.text_ed],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              SizedBox(width: 4),
              Text(
                AppStrings.latestPromos,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = _linearGradient_1,
                ),
              ),
              Spacer(),
              Text(
                AppStrings.viewAll,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.view_all,
                ),
              ),
              SizedBox(width: 24),
            ],
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CardSpotify(),
                SizedBox(width: 10),
                CardFacebook(),
                SizedBox(width: 10),
                CardSpotify(),
                SizedBox(width: 10),
                CardFacebook(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
