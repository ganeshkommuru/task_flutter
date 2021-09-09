import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/dataBalanceModel.dart';

class DashboardService {
  Future<DataBalance> getDataBalanceDetails(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('mock/dataBalence.json');
    Map<String, dynamic> dataBalance = jsonDecode(jsonString);
    //print(dataBalance);
    final dataBalanceList = DataBalance.fromJson(dataBalance);
    return dataBalanceList;
  }
}
