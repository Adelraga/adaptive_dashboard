import 'package:flutter/material.dart';

import '../cors/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
