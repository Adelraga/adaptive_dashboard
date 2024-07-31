import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/transction_item.dart';

import '../cors/models/transcation_model.dart';


class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TranscationModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TranscationModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
    TranscationModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );

  }
}