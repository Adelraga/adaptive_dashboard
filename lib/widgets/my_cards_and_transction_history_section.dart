import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_card.dart';
import 'package:responsive_app/widgets/dots_indicator.dart';

import 'my_card_sectin.dart';
import 'transction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            MyCardSectin(),
            Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
            TransctionHistory(),
          ],
        ));
  }
}
