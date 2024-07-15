import 'package:flutter/material.dart';

import 'custome_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomeDrawer(),
        ),
      ],
    );
  }
}
