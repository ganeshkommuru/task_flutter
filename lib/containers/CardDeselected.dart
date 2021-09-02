import 'package:flutter/material.dart';

class CardDeselected extends StatelessWidget {
  const CardDeselected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
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
            backgroundImage: AssetImage('assets/play.png'),
            radius: 10,
          ),
          SizedBox(height: 28),
          Text(
            'Data Balance',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0x80131415),
            ),
          ),
          SizedBox(height: 2),
          Text(
            '300 MB',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFA131415),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'of 12 GB',
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xff272727),
            ),
          ),
        ],
      ),
      
    );
  }
}
