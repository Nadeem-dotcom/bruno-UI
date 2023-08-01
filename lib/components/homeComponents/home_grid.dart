import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) function; // Add comma here
  const HomeGrid({super.key, required this.itemCount, required this.function});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        ), 
        itemCount: itemCount,
      itemBuilder: function,
      );
  }
}