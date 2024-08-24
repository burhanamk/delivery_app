import 'package:flutter/material.dart';

import 'food_item_widget.dart';

class RestaurantMenuItemsWidget extends StatelessWidget {
  const RestaurantMenuItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const FoodItemWidget(
          imageUrl:
          "https://fforflavour.com/wp-content/uploads/2018/08/IMG_5518.jpg",
          name: "Butter Paneer",
          rating: 4.5,
          totalRatings: 11107,
          price: 250,
          isVeg: true,
          isCustomisable: true,
        );
      },
    );
  }
}
