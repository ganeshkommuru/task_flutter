import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/images.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class Prime extends StatelessWidget {
  const Prime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              SizedBox(width: 4),
              Text(
                AppStrings.latestOn,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  letterSpacing: -0.16,
                ),
              ),
              SizedBox(width: 4),
              Image(
                image: AssetImage(AppImages.primeLogo),
                width: 71,
                height: 22,
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
                Image(
                    image: AssetImage(AppImages.s13Reasons),
                    width: 140,
                    height: 190),
                SizedBox(width: 10),
                Image(
                    image: AssetImage(AppImages.strangerThings),
                    width: 140,
                    height: 190),
                SizedBox(width: 10),
                Image(
                    image: AssetImage(AppImages.s13Reasons),
                    width: 140,
                    height: 190),
                SizedBox(width: 10),
                Image(
                    image: AssetImage(AppImages.strangerThings),
                    width: 140,
                    height: 190),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
