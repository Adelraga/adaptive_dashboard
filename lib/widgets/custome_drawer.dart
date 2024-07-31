import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/cors/app_images.dart';
import 'package:responsive_app/cors/styles.dart';

import '../cors/constants/constant.dart';
import 'drawer_item.dart';
import 'drawer_items_list_view.dart';
import 'user_info_list_title.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width *.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              image: Assets.assetsSvgsAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'sfde23@gmail.com',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                ListTile(
                  leading: SvgPicture.asset(Assets.assetsSvgsSettings),
                  title: Text(
                    "Setting System",
                    style: AppStyles.styleMedium16,
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset(Assets.assetsSvgsLogout),
                  title: Text(
                    "Logout account",
                    style: AppStyles.styleMedium16,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
