import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/Netflix.dart';
import 'package:landing_page_task/widgets/Recommendations.dart';
import 'package:landing_page_task/widgets/Prime.dart';

class Subscriptions extends StatelessWidget {
  Subscriptions({Key? key}) : super(key: key);

  final Shader _linearGradient_3 = LinearGradient(
    colors: [AppColors.cornflower, AppColors.pale_salmon],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 40, 0, 32),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
          bottom: Radius.circular(0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppStrings.mySub,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.16,
              color: AppColors.white.withOpacity(0.35),
            ),
          ),
          SizedBox(height: 20),
          Text(AppStrings.remainingGb,
              style: TextStyle(
                fontFamily: 'AvenirNext',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.4,
                foreground: Paint()..shader = _linearGradient_3,
              )),
          Text(AppStrings.reaminingMin,
              style: TextStyle(
                fontFamily: 'AvenirNext',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.4,
                foreground: Paint()..shader = _linearGradient_3,
              )),
          Netflix(),
          Prime(),
          Recommendations(),
        ],
      ),
    );
  }
}
