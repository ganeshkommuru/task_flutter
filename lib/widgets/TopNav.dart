import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/images.dart';
import 'package:landing_page_task/themes/colors.dart';

class AppNav extends StatelessWidget {
  const AppNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {},
          icon:  Icon(
            Icons.dehaze,
            color: AppColors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
            child: IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: AppColors.black,
                size: 22,
              ),
              onPressed: () {
                // do something
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages.profilePic),
              radius: 16,
            ),
          ),

        ],
    );
  }
}
