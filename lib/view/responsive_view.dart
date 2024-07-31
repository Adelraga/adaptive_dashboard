import 'package:flutter/material.dart';
import 'package:responsive_app/view/adaptive_layout_view.dart';
import 'package:responsive_app/widgets/custome_drawer.dart';

import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';

class ResponsiveView extends StatefulWidget {
  const ResponsiveView({super.key});
  

  @override
  State<ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF7F9FA),
          drawer:MediaQuery.sizeOf(context).width < 800  ? CustomeDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                    
                  }, icon: Icon(Icons.menu)),
            )
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => DashboardMobileLayout(),
          tabletLayout: (context) => DashboardTabletLayout(),
          desktopLayout: (context) => DashboardDesktopLayout()),
    );
  }
}
