import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/dataBalanceModel.dart';

import 'package:landing_page_task/themes/colors.dart';

// ignore: must_be_immutable
class BalanceCardsList extends StatefulWidget {
  //const BalanceCardsList({ Key? key }) : super(key: key);

  List<Databalancecard> dataBalance;
  @override
  BalanceCardsList({required this.dataBalance});

  @override
  _BalanceCardsListState createState() => _BalanceCardsListState();
}

class _BalanceCardsListState extends State<BalanceCardsList> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.dataBalance.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
                //curr = true;
              });
              //_currentIndex = index;
              print(_currentIndex);
            },
            child: new Container(
              child: Row(
                children: [
                  Container(
                    width: widget.dataBalance[index].id == _currentIndex
                        ? 160
                        : 140,
                    height: widget.dataBalance[index].id == _currentIndex
                        ? 180
                        : 160,
                    decoration: BoxDecoration(
                      //color: AppColors.white,
                      gradient: widget.dataBalance[index].id == _currentIndex
                          ? LinearGradient(
                              colors: [AppColors.gd_start, AppColors.gd_end])
                          : LinearGradient(
                              colors: [AppColors.white, AppColors.white]),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.white.withOpacity(0.05),
                          blurRadius: 14.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(widget.dataBalance[index].image),
                          radius: widget.dataBalance[index].id == _currentIndex
                              ? 13
                              : 10,
                        ),
                        SizedBox(height: 24),
                        Text(
                          widget.dataBalance[index].balancetype,
                          style: TextStyle(
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: widget.dataBalance[index].id == _currentIndex
                                ? AppColors.white.withOpacity(0.8)
                                : AppColors.text_vlight,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          widget.dataBalance[index].price,
                          style: TextStyle(
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w600,
                            fontSize:
                                widget.dataBalance[index].id == _currentIndex
                                    ? 22
                                    : 20,
                            color: widget.dataBalance[index].id == _currentIndex
                                ? AppColors.white
                                : AppColors.text_vdark,
                          ),
                        ),
                        SizedBox(
                            height:
                                widget.dataBalance[index].id == _currentIndex
                                    ? 30
                                    : 12),
                        Text(
                          widget.dataBalance[index].validity,
                          style: TextStyle(
                            fontFamily: 'AvenirNext',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: widget.dataBalance[index].id == _currentIndex
                                ? AppColors.white.withOpacity(0.8)
                                : AppColors.text_dark,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
