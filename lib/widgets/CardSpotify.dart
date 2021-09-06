import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/images.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class CardSpotify extends StatelessWidget {
  const CardSpotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 168,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage(AppImages.spotifyBg),
            fit: BoxFit.cover,
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(16, 24, 0, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(AppImages.spotifyLogo),
                  width: 18,
                  height: 18,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      AppStrings.lSpotify,
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.5,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      AppStrings.lsPremium,
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
              ],
            ),
          ),
          //SizedBox(height: 38),
          Spacer(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(16, 14, 0, 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.black.withOpacity(0.3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.lSubscription,
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
                      AppStrings.lPrice,
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
  }
}
