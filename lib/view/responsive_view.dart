import 'package:flutter/material.dart';
import 'package:responsive_app/view/adaptive_layout_view.dart';

import '../widgets/dashboard_desktop_layout.dart';

class ResponsiveView extends StatelessWidget {
  const ResponsiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => Placeholder(),
          tabletLayout: (context) => Placeholder(),
          desktopLayout: (context) => DashboardDesktopLayout()),
    );
  }
}
