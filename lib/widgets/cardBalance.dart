import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/dataBalanceModel.dart';
import 'package:landing_page_task/resources/images.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/themes/colors.dart';

class CardBalance extends StatefulWidget {
  //const CardBalance({Key? key}) : super(key: key);

  dynamic dataBalance;
  int currentIndex;
  CardBalance({required this.dataBalance, required this.currentIndex});

  @override
  _CardBalanceState createState() => _CardBalanceState();
}

class _CardBalanceState extends State<CardBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.dataBalance.id == widget.currentIndex ? 160 : 140,
      height: widget.dataBalance.id == widget.currentIndex ? 180 : 160,
      decoration: BoxDecoration(
        //color: AppColors.white,
        gradient: widget.dataBalance.id == widget.currentIndex
            ? LinearGradient(colors: [AppColors.gd_start, AppColors.gd_end])
            : LinearGradient(colors: [AppColors.white, AppColors.white]),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: AppColors.white.withOpacity(0.05),
            blurRadius: 14.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(widget.dataBalance.image),
            radius: widget.dataBalance.id == widget.currentIndex ? 13 : 10,
          ),
          SizedBox(height: 24),
          Text(
            widget.dataBalance.balancetype,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: widget.dataBalance.id == widget.currentIndex
                  ? AppColors.white.withOpacity(0.8)
                  : AppColors.text_vlight,
            ),
          ),
          SizedBox(height: 2),
          Text(
            widget.dataBalance.price,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w600,
              fontSize: widget.dataBalance.id == widget.currentIndex ? 22 : 20,
              color: widget.dataBalance.id == widget.currentIndex
                  ? AppColors.white
                  : AppColors.text_vdark,
            ),
          ),
          SizedBox(
              height: widget.dataBalance.id == widget.currentIndex ? 30 : 12),
          Text(
            widget.dataBalance.validity,
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: widget.dataBalance.id == widget.currentIndex
                  ? AppColors.white.withOpacity(0.8)
                  : AppColors.text_dark,
            ),
          ),
        ],
      ),
    );
  }
}
