import 'package:flutter/material.dart';
import 'package:landing_page_task/containers/NumberSelect.dart';
import 'package:landing_page_task/containers/SideScroll.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          NumberSelect(),
          SideScroll(),

        ],
      ),
    );
  }
}
