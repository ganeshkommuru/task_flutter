import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';

class SpecialPromos extends StatelessWidget {
  SpecialPromos({Key? key}) : super(key: key);

  final Shader _linearGradient_1 = LinearGradient(
    colors: [AppColors.text_st, AppColors.text_ed],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  final Shader _linearGradient_2 = LinearGradient(
    colors: [AppColors.white, AppColors.t_pink],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 400.0, 80.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 32, 20, 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(4,0,0,0),
            child: Text(
              'Special Promos',

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
            height: 156,
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage('assets/special_promo.png'),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GoSakto',
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.16,
                    color: AppColors.white.withOpacity(0.68),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Create What Matters',
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.18,
                    fontSize: 18,
                    foreground: Paint()..shader = _linearGradient_2,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  "Promo that's all for you!",
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontWeight: FontWeight.normal,
                    letterSpacing: -0.34,
                    color: AppColors.white,
                    fontSize: 12
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'Create your own Promo',
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.1,
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                            Icons.keyboard_arrow_right_outlined,
                          size: 15,
                          color: AppColors.white,
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