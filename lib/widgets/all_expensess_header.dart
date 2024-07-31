import 'package:flutter/material.dart';

import '../cors/styles.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Monthly",
                  style: AppStyles.styleMedium16,
                ),
                SizedBox(
                  width: 8,
                ),
                Transform.rotate(
                    angle: 270 * 3.14 / 180,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 22,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
