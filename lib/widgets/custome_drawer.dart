import 'package:flutter/material.dart';
import 'package:responsive_app/cors/app_images.dart';
import 'package:responsive_app/cors/styles.dart';

import 'user_info_list_title.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children:[
          UserInfoListTitle(
            image: Assets.assetsSvgsAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'sfde23@gmail.com',
          ),
        ],
      ),
    );
  }
}