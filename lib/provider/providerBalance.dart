import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/dataBalanceModel.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';

class Balanceprovider with ChangeNotifier {
  bool loading = false;
  late DataBalance card;

  set setCardModel(DataBalance updatedcard) {
    print(' in provider folder__________________> /n $updatedcard');
    card = updatedcard;
    notifyListeners();
  }
}
