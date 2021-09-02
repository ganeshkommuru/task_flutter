import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page_task/containers/CardDeselected.dart';
import 'package:landing_page_task/containers/CardSelected.dart';

class SideScroll extends StatelessWidget {
  const SideScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 32.0, 0.0, 32.0),
      color: Color(0xFFF1F4FF),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CardSelected(),
              CardDeselected(),
            ],
          ),
          SizedBox(height: 27),
          Row(
            children: <Widget>[
              SizedBox(width: 6),
              Text(
                  'Recommended',
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xA3131415),
                ),
              ),
              Spacer(),
              Text(
                  'View All',
                style: TextStyle(
                  fontFamily: 'AvenirNext',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xff5056ff),
                ),
              ),
              SizedBox( width: 24
              ),
            ],
          ),
        ],
      ),
    );
  }
}
