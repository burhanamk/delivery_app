import 'package:flutter/material.dart';

import '../constants/colors.dart';

class OfferIconWidget extends StatelessWidget {
  final double iconSize;
  const OfferIconWidget({super.key, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => const RadialGradient(
        center: Alignment.centerRight,
        stops: [0.8, 1],
        colors: [
          blueColor,
          lightBlueColor,
        ],
      ).createShader(bounds),
      child: Image.asset(
        "assets/images/offer_icon.png",
        height: iconSize,
        width: iconSize,
      ),
    );
  }
}
