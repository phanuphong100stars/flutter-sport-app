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
  TeamRanking(
      name: 'Brighton & Hove Albion', mp: 12, w: 13, d: 14, pts: 30, rank: 7),
  TeamRanking(name: 'Fulham', mp: 12, w: 13, d: 14, pts: 29, rank: 8),
  TeamRanking(name: 'Brentford', mp: 12, w: 13, d: 14, pts: 28, rank: 9),
  TeamRanking(name: 'Crystal Palace', mp: 12, w: 13, d: 14, pts: 27, rank: 10),
  TeamRanking(
      name: 'Newcastle United', mp: 12, w: 13, d: 14, pts: 26, rank: 11),
  TeamRanking(name: 'Chelsea', mp: 12, w: 13, d: 14, pts: 25, rank: 12),
  TeamRanking(
      name: 'Manchester United', mp: 12, w: 13, d: 14, pts: 24, rank: 13),
  TeamRanking(name: 'Leicester City', mp: 12, w: 13, d: 14, pts: 23, rank: 14),
  TeamRanking(name: 'AFC Bournemouth', mp: 12, w: 13, d: 14, pts: 22, rank: 15),
  TeamRanking(name: 'Leeds United', mp: 12, w: 13, d: 14, pts: 21, rank: 16),
  TeamRanking(
      name: 'Wolverhampton Wanderers', mp: 12, w: 13, d: 14, pts: 20, rank: 17),
  TeamRanking(
      name: 'Nottingham Forest', mp: 12, w: 13, d: 14, pts: 19, rank: 18),
  TeamRanking(name: 'Everton', mp: 12, w: 13, d: 14, pts: 18, rank: 19),
  TeamRanking(name: 'Southampton', mp: 12, w: 13, d: 14, pts: 17, rank: 20)
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
