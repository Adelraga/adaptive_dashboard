import 'package:flutter/material.dart';

import '../cors/styles.dart';

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        Text(
          'View All',
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
