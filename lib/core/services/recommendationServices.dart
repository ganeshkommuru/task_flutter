import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/recommendationModels.dart';

class RecommendationService {
  Future<RecommendationPlans> getRecommendationPlanDetails(
      BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('mock/recommendedPlans.json');
    Map<String, dynamic> recommendations = jsonDecode(jsonString);
    //print(dataBalance);
    final recommendationList = RecommendationPlans.fromJson(recommendations);
    return recommendationList;
  }
}
