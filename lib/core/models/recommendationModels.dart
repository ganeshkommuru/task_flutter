// To parse this JSON data, do
//
//     final RecommendationPlans = RecommendationPlansFromJson(jsonString);

import 'dart:convert';

RecommendationPlans RecommendationPlansFromJson(String str) =>
    RecommendationPlans.fromJson(json.decode(str));

String RecommendationPlansToJson(RecommendationPlans data) =>
    json.encode(data.toJson());

class RecommendationPlans {
  RecommendationPlans({
    required this.plans,
  });

  List<Plan> plans;

  factory RecommendationPlans.fromJson(Map<String, dynamic> json) =>
      RecommendationPlans(
        plans: List<Plan>.from(json["plans"].map((x) => Plan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "plans": List<dynamic>.from(plans.map((x) => x.toJson())),
      };
}

class Plan {
  Plan({
    this.plan = '',
    this.duration = '',
    this.planType = '',
  });

  String plan;
  String duration;
  String planType;

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        plan: json["plan"],
        duration: json["duration"],
        planType: json["planType"],
      );

  Map<String, dynamic> toJson() => {
        "plan": plan,
        "duration": duration,
        "planType": planType,
      };
}
