import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_dots.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDots(isActive: index ==currentPageIndex ),
        ),
      ),
    );
  }
}
