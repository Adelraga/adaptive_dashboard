import 'package:flutter/material.dart';

import 'all_expensess_and_quick_invoice_section.dart';
import 'custome_drawer.dart';
import 'dashboard_mobile_layout.dart';
import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomeDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: DashboardMobileLayout(),
        ),
      ],
    );
  }
}

