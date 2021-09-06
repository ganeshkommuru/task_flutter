import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 36),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(
            color: AppColors.black, width: 1, style: BorderStyle.solid),
      ),
      child: Center(
          child: Text(
        AppStrings.fOM,
        style: TextStyle(
          fontFamily: 'AvenirNext',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      )),
    );
  }
}
