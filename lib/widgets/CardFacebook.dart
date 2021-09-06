import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class CardFacebook extends StatelessWidget {
  const CardFacebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 168,
      padding: EdgeInsets.fromLTRB(16, 24, 0, 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage('assets/facebook_bg.png'),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('assets/facebook_logo.png'),
            width: 18,
            height: 18,
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                AppStrings.lFacebook,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                  color: AppColors.white,
                ),
              ),
              Text(
                AppStrings.lSurf,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  letterSpacing: -0.5,
                  color: AppColors.white,
                ),
              )
            ],
          ),
          SizedBox(height: 38),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.lfText,
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.3,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      AppStrings.lfPrice,
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.2,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      AppStrings.lperM,
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        letterSpacing: -0.14,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
