import 'package:flutter/material.dart';
import 'package:landing_page_task/core/models/recommendationModels.dart';
import 'package:landing_page_task/themes/colors.dart';

class RecommendationCardsList extends StatefulWidget {
  //const RecommendationCardsList({ Key? key }) : super(key: key);

  List<Plan> recommendationCards;
  RecommendationCardsList({required this.recommendationCards});

  @override
  _RecommendationCardsListState createState() =>
      _RecommendationCardsListState();
}

class _RecommendationCardsListState extends State<RecommendationCardsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.recommendationCards.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Container(
                width: 158,
                height: 63,
                decoration: BoxDecoration(
                  color: AppColors.event_color,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.white,
                      blurRadius: 6.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(0.0, 0.0), // shadow direction: bottom right
                    )
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SizedBox(height: 28),
                    Text(
                      widget.recommendationCards[index].plan,
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.w600,
                        fontSize: 9,
                        color: AppColors.white.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      widget.recommendationCards[index].duration,
                      style: TextStyle(
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
            ],
          );
        },
      ),
    );
  }
}
