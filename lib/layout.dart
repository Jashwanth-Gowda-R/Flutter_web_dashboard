import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/widgets/large_screen.dart';
import 'package:flutter_web_dashboard/widgets/side_menu.dart';
import 'package:flutter_web_dashboard/widgets/small_screen.dart';
import 'package:flutter_web_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
        customScreen: LargeScreen(),
      ),
    );
  }
}
