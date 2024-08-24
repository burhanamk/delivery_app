import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'rating_widget.dart';

class RestaurantNameAndRatingWidget extends StatelessWidget {
  final String restaurantName;
  final double rating;
  final double textSize;

  const RestaurantNameAndRatingWidget({
    super.key,
    required this.restaurantName,
    required this.rating,
    this.textSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          restaurantName,
          style: textTheme.titleSmall?.copyWith(
            color: darkBlack,
            fontSize: textSize,
          ),
        ),
        const Spacer(),
        RatingWidget(
          rating: rating,
        ),
      ],
    );
  }
}
