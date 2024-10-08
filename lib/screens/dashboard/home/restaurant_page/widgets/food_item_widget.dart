import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/colors.dart';
import '../../../../../widgets/add_button.dart';
import '../../../../../widgets/best_seller_widget.dart';
import '../../../../../widgets/bordered_rating_widget.dart';
import '../../../../../widgets/custom_dashed_divider.dart';
import '../../../../../widgets/veg_or_non_veg_icon_widget.dart';
import '../screens/buy_food_item_bottom_sheet_screen.dart';

class FoodItemWidget extends ConsumerStatefulWidget {
  final String imageUrl;
  final String name;
  final double rating;
  final double totalRatings;
  final int price;
  final bool isVeg;
  final String? banner;
  final Color? bannerColor;
  final bool isCustomisable;

  const FoodItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.totalRatings,
    required this.price,
    required this.isVeg,
    this.banner,
    this.bannerColor,
    required this.isCustomisable,
  });

  @override
  ConsumerState<FoodItemWidget> createState() => _FoodItemWidgetState();
}

class _FoodItemWidgetState extends ConsumerState<FoodItemWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final textTheme = Theme.of(context).textTheme;
    // final localText = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: showFoodItemBottomSheet,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(
          bottom: 25,
        ),
        color: white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Row(
                          children: [
                            VegOrNonVegIconWidget(
                              isVeg: false,
                              size: 18,
                            ),
                            BestSellerWidget()
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 8),
                          child: Text(
                            "Hyderabadi Chicken Dum Biryani",
                            style: textTheme.titleSmall?.copyWith(fontSize: 18),
                          ),
                        ),
                        Wrap(
                          children: [
                            const BorderedRatingWidget(
                              color: yellowColor,
                              rating: 3.75,
                              size: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Text(
                                "875 ratings",
                                style: textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "₹162",
                          style: textTheme.labelMedium?.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                "https://www.cubesnjuliennes.com/wp-content/uploads/2020/07/Chicken-Biryani-Recipe.jpg",
                                width: width * 0.39,
                                height: width * 0.39,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: width * 0.28,
                            child: AddButton(
                              onClick: () {
                                // ref.read(itemBarController.notifier).state += 1;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "customisable",
                        style: textTheme.labelSmall?.copyWith(color: midGrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomDashedDivider(
              color: lightGrey,
            ),
          ],
        ),
      ),
    );
  }

  void showFoodItemBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
   isScrollControlled: true,
      builder: (context) {
        return const BuyFoodItemBottomSheetScreen();
      },
    );
  }
}
