import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/cors/models/drawer_item_model.dart';
import 'package:responsive_app/cors/styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ListTile(
            leading: SvgPicture.asset(drawerItemModel.image),
            title: Text(
              drawerItemModel.title,
              style: AppStyles.styleBold16,
            ),
            trailing: Container(
              width: 3.27,
              decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
            ),
          )
        : ListTile(
            leading: SvgPicture.asset(drawerItemModel.image),
            title: Text(
              drawerItemModel.title,
              style: AppStyles.styleMedium16,
            ),
          );
  }
}
