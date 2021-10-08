import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/dataBalanceModel.dart';

class DashboardService {
  Future<DataBalance> getDataBalanceDetails() async {
    String jsonString = '';
    //Map<String, dynamic> dataBalance;
    // final response =
    //     await get(Uri.parse('http://demo5265732.mockable.io/providerData'));
    // if (response.statusCode == 200) {
    //   try {
    //     jsonString = response.body;
    //     //dataBalance = jsonDecode(response.body);
    //   } catch (e) {
    //     print(e.toString());
    //   }
    // } else {
    //   print('response not obtained');
    // }

    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection('databalancecard');

    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    print('___________firebase');
    print(allData);

    // Map<String, dynamic> dataBalance = jsonDecode(jsonString);
    // print('dashboard-------------->');
    // print(dataBalance);
    final dataBalanceList = DataBalance.fromFirestore(allData);
    return dataBalanceList;
  }
}
