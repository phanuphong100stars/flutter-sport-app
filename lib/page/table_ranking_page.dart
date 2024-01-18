import 'package:flutter/material.dart';
import 'package:sport_app/component/ranking_table_component.dart';
import 'package:sport_app/config/theme_config.dart';

class TableRankingPage extends StatefulWidget {
  const TableRankingPage({super.key});

  @override
  State<TableRankingPage> createState() => _TableRankingPageState();
}

class _TableRankingPageState extends State<TableRankingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
      width: double.infinity,
      color: ThemeConfig.background,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Premier League',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal, child: RankingTableComponent())
        ]),
      ),
    ));
  }
}
