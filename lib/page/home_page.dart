import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import '../config/theme_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    _motionTabBarController = MotionTabBarController(
      initialIndex: 2,
      length: 5,
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Arsenal Football Club',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
            color: ThemeConfig.background,
            fontSize: 28,
          )),
        ),
        backgroundColor: ThemeConfig.primaryDark,
        toolbarHeight: 80,
        centerTitle: false,
        titleSpacing: 10.0,
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.notifications),
          //   color: ThemeConfig.background,
          //   onPressed: () {},
          // ),
        ],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _motionTabBarController,
        children: const [
          Center(
            child: Text("Dashboard"),
          ),
          Center(
            child: Text("Profile"),
          ),
          SingleChildScrollView(child: FirstPage()),
          Center(
            child: Text("Settings"),
          ),
          Center(
            child: Text("Noti"),
          ),
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "Home",
        labels: const [
          "Dashboard",
          "Profile",
          "Home",
          "Settings",
          "Noti",
        ],
        icons: const [
          Icons.dashboard,
          Icons.people_alt,
          Icons.home,
          Icons.settings,
          Icons.notifications,
        ],

        // optional badges, length must be same with labels
        badges: [
          // Default Motion Badge Widget
          const MotionBadgeWidget(
            text: '10+',
            textColor: Colors.white, // optional, default to Colors.white
            color: Colors.red, // optional, default to Colors.red
            size: 18, // optional, default to 18
          ),

          // custom badge Widget
          // Container(
          //   color: Colors.black,
          //   padding: const EdgeInsets.all(2),
          //   child: const Text(
          //     '11',
          //     style: TextStyle(
          //       fontSize: 14,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          null,

          // allow null
          null,

          // Default Motion Badge Widget with indicator only
          MotionBadgeWidget(
            isIndicator: true,
            color: ThemeConfig.primaryDark, // optional, default to Colors.red
            size: 5, // optional, default to 5,
            show: true, // true / false
          ),

          null
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: ThemeConfig.primary,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: ThemeConfig.primaryDark,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            // _tabController!.index = value;
            _motionTabBarController!.index = value;
          });
        },
      ),
    );
  }
}
