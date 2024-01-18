import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:sport_app/component/last_match_component.dart';
import 'package:sport_app/component/news_list_view_component.dart';
import 'package:sport_app/component/next_fixure_component.dart';
import 'package:sport_app/component/player_list_view_component.dart';
import 'package:sport_app/component/ranking_table_component.dart';
import '../config/theme_config.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FirstPage> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 5,
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Match History',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
            ),
          ),
          Container(
              color: ThemeConfig.background,
              height: 100,
              child: const LastMatchComponent()),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: NextFixtureComponent(),
          ),
          // const RankingTableComponent(),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Ranking Table',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
                      TextButton(
                          onPressed: () => {},
                          child: const Text(
                            'View More',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          )),
                    ])),
          ),
          const Card(
              elevation: 1,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: RankingTableComponent())),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('News',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
                      TextButton(
                          onPressed: () => {},
                          child: const Text(
                            'View More',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          )),
                    ])),
          ),
          Container(
              color: ThemeConfig.background,
              height: 270,
              child: const NewsListViewComponent()),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Players',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
                      TextButton(
                          onPressed: () => {},
                          child: const Text(
                            'View More',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          )),
                    ])),
          ),
          const SizedBox(height: 320, child: PlayerListViewComponent()),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
