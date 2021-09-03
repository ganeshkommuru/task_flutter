import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';
import 'package:landing_page_task/widgets/Netflix.dart';
import 'package:landing_page_task/widgets/Others.dart';
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
      height: 891,
      padding: EdgeInsets.fromLTRB(20, 40, 0, 32),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              'My Subscriptions',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.16,
              color: AppColors.white.withOpacity(0.35),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'With Remaning 12GB,',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.4,
              foreground: Paint()..shader = _linearGradient_3,
            )
          ),
          Text(
              'You can watch 640 min of video',
              style: TextStyle(
                fontFamily: 'AvenirNext',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.4,
                foreground: Paint()..shader = _linearGradient_3,
              )
          ),
          Netflix(),
          Prime(),
          Others(),
        ],
      ),
    );
  }
}
