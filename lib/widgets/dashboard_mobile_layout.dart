
import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
      
          MyCardsAndTransctionHistorySection(),
          IncomeSection(),
              // AllExpensessAndQuickInvoiceSection(),
        ],
      ),
    );
  }
}
