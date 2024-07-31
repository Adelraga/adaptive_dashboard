import 'package:flutter/material.dart';

import '../cors/app_images.dart';
import 'user_info_list_title.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, // Adjust as needed.
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6, // Replace with actual number of items you want to display.
        itemBuilder: (context,index){
        return IntrinsicWidth(
          child: UserInfoListTitle(
                  image: Assets.assetsSvgsAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'sfde23@gmail.com',
                ),
        );
      }),
    );
  }
}