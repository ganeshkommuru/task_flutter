import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/images.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class Spa extends StatelessWidget {
  const Spa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 180,
      padding: EdgeInsets.fromLTRB(16, 20, 0, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage(AppImages.spa),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(AppImages.raffles),
            width: 64,
            height: 28,
          ),
          SizedBox(height: 29),
          Row(
            children: [
              Text(
                AppStrings.thousand,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.2,
                  color: AppColors.white,
                ),
              ),
              Text(
                AppStrings.gpts,
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 27),
          Text(
            AppStrings.sp1,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5,
              color: AppColors.white,
            ),
          ),
          Text(
            AppStrings.sp2,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
