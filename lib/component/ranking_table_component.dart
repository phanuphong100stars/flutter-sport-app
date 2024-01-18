import 'package:flutter/material.dart';
import 'package:sport_app/model/team_ranking_model.dart';

class RankingTableComponent extends StatefulWidget {
  const RankingTableComponent({super.key});

  @override
  State<RankingTableComponent> createState() => _RankingTableComponentState();
}

final data = [
  TeamRanking(name: 'Liverpool', mp: 12, w: 13, d: 14, pts: 56, rank: 1),
  TeamRanking(name: 'Manchester City', mp: 12, w: 13, d: 14, pts: 31, rank: 2),
  TeamRanking(name: 'Aston Villa', mp: 12, w: 13, d: 14, pts: 10, rank: 3),
  TeamRanking(name: 'Arsenal', mp: 12, w: 13, d: 14, pts: 40, rank: 4),
  TeamRanking(
      name: 'Tottenham Hotspur', mp: 12, w: 13, d: 14, pts: 13, rank: 5),
  TeamRanking(name: 'Westham United', mp: 12, w: 13, d: 14, pts: 43, rank: 6),
];

class _RankingTableComponentState extends State<RankingTableComponent> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
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
            (states) => indexData == 4 ? Colors.red[100] : Colors.white,
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
    );
  }
}
