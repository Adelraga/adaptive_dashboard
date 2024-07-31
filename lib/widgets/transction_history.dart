import 'package:flutter/material.dart';

import 'transction_history_header.dart';
import 'transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        TransctionHistoryHeader(),
        SizedBox(
          height: 16,
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}
