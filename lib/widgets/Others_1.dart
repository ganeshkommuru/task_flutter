import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class Others_1 extends StatelessWidget {
  const Others_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 168,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: AppColors.grape_purple),
      child: Column(
        children: [
          SizedBox(height: 31),
          Image(
            image: AssetImage('assets/others_1.png'),
            width: 102,
            height: 43,
          ),
          SizedBox(height: 26),
          Container(
            width: 140,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: AppColors.black.withOpacity(0.6),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(14, 16, 0, 0),
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
          )
        ],
      ),
    );
  }
}
