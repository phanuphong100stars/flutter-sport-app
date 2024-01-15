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

class TeamData {
  final int rank;
  final String name;
  final int mp;
  final int w;
  final int d;
  final int pts;

  TeamData({
    required this.rank,
    required this.name,
    required this.mp,
    required this.w,
    required this.d,
    required this.pts,
  });
}

final data = [
  TeamData(name: 'MC United', mp: 12, w: 13, d: 14, pts: 56, rank: 1),
  TeamData(name: 'Arsenal', mp: 12, w: 13, d: 14, pts: 31, rank: 2),
  TeamData(name: 'PSG', mp: 12, w: 13, d: 14, pts: 10, rank: 3),
  TeamData(name: 'Barcelona', mp: 12, w: 13, d: 14, pts: 40, rank: 4),
  TeamData(name: 'Real Madrid', mp: 12, w: 13, d: 14, pts: 13, rank: 5),
  TeamData(name: 'Bayren Munich', mp: 12, w: 13, d: 14, pts: 43, rank: 6),
];

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
          Card(
              elevation: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Rank')),
                    DataColumn(label: Text('Team')),
                    DataColumn(label: Text('PTS')),
                    DataColumn(label: Text('MP')),
                    DataColumn(label: Text('W')),
                    DataColumn(label: Text('D')),
                  ],
                  rows: data.map((team) {
                    // final isOdd = data.indexOf(team) % 2 == 1;
                    final indexData = data.indexOf(team) + 1;

                    return DataRow(
                      color: MaterialStateProperty.resolveWith(
                        (states) =>
                            indexData == 2 ? Colors.red[100] : Colors.white,
                      ),
                      cells: [
                        DataCell(Text(team.rank.toString())),
                        DataCell(Text(team.name)),
                        DataCell(Text(team.pts.toString())),
                        DataCell(Text(team.mp.toString())),
                        DataCell(Text(team.w.toString())),
                        DataCell(Text(team.d.toString())),
                      ],
                    );
                  }).toList(),
                ),
              )),
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
