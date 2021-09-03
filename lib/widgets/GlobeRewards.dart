import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';

class GlobeRewards extends StatelessWidget {
  GlobeRewards({Key? key}) : super(key: key);

  final Shader _linearGradient_1 = LinearGradient(
    colors: [AppColors.text_st, AppColors.text_ed],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 36, 20, 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(4,0,0,0),
            child: Text(
              'Globe Rewards',

              style: TextStyle(
                fontFamily: 'AvenirNext',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = _linearGradient_1,
              ),
            ),
          ),
          SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 84,
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                colorFilter: ColorFilter.mode(
                Colors.orange.withOpacity(0.5), BlendMode.dstATop),
                image: AssetImage("assets/gift_box.png"),
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(
                  colors: [AppColors.tangire,AppColors.mango],
                ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    'YOUR REWARD POINTS',
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    letterSpacing: 0.12,
                    color: AppColors.white.withOpacity(0.9),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '7250',
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.69,
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      ' Pts',
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),

          )
        ],
      ),
    );
  }
}
