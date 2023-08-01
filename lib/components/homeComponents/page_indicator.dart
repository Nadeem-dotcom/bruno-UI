import 'package:flutter/material.dart';

class CustomPageIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;
  final Color activeColor;
  final Color inactiveColor;
  final double dotSize;
  final double spacing;

  const CustomPageIndicator({super.key, 
    required this.itemCount,
    required this.currentIndex,
    required this.activeColor,
    required this.inactiveColor,
    this.dotSize = 10.0,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final isActive = index == currentIndex;
        final color = isActive ? activeColor : inactiveColor;

        return Container(
          width: dotSize,
          height: dotSize,
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        );
      }),
    );
  }
}
