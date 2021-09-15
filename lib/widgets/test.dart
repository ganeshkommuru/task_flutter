import 'package:flutter/material.dart';
import 'package:landing_page_task/provider/providerBalance.dart';
import 'package:provider/provider.dart';

class TestProvider extends StatelessWidget {
  const TestProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //context.read<NewData>().fetchData;
    return Container(
      child: Center(
        child: Text('HI'),
      ),
    );
  }
}
