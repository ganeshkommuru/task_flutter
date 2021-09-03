import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';

class Aldo extends StatelessWidget {
  const Aldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 180,
      padding: EdgeInsets.fromLTRB(16, 20, 0, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage('assets/shoes.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage('assets/aldo.png'),width: 64,height: 28,),
          SizedBox(height: 29),
          Row(
            children: [
              Text(
                '1000',
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.2,
                  color: AppColors.white,
                ),
              ),
              Text(
                ' Pts',
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
            'P 500 OFF',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5,
              color: AppColors.white,
            ),
          ),
          Text(
            'on Shoes',
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
