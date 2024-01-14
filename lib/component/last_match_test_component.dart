import 'package:flutter/material.dart';
import 'package:sport_app/model/last_match_model.dart';

class LastMatchTestComponent extends StatefulWidget {
  const LastMatchTestComponent({super.key});

  @override
  State<LastMatchTestComponent> createState() => _LastMatchTestComponent();
}

class _LastMatchTestComponent extends State<LastMatchTestComponent> {
  @override
  void initState() {
    super.initState();
  }

  final List<LastMatch> matches = [
    LastMatch(
        opponent: 'Liverpool',
        teamScore: 0,
        awayScore: 2,
        isHome: false,
        img: 'image/liverpool.png'),
    LastMatch(
        opponent: 'Fullham',
        teamScore: 1,
        awayScore: 2,
        isHome: false,
        img: 'image/fulham.png'),
    LastMatch(
        opponent: 'West Ham',
        teamScore: 0,
        awayScore: 2,
        isHome: true,
        img: 'image/westham.png'),
    LastMatch(
        opponent: 'Liverpool',
        teamScore: 1,
        awayScore: 1,
        isHome: false,
        img: 'image/liverpool.png'),
    LastMatch(
        opponent: 'Brighton',
        teamScore: 2,
        awayScore: 0,
        isHome: true,
        img: 'image/brighton.png')
  ];

  Widget _getMatchWonStatus(LastMatch match) {
    final int teamScore = match.teamScore;
    final int awayScore = match.awayScore;

    final bool isWin = teamScore > awayScore;
    final bool isLose = teamScore < awayScore;

    if (isWin) {
      return const Text(
        'Win',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.green,
        ),
      );
    }

    if (isLose) {
      return const Text(
        'Lose',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.red,
        ),
      );
    }

    return const Text(
      'Draw',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: matches.length,
      itemBuilder: (context, index) {
        final bool isHome = matches[index].isHome;

        return Padding(
          padding: const EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 8),
          child: Card(
            elevation: 1,
            child: SizedBox(
              width: 220,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          matches[index].img,
                          width: 40,
                        ),
                        Column(
                          children: [
                            _getMatchWonStatus(matches[index]),
                            Row(
                              children: [
                                Text(matches[index].awayScore.toString(),
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey)),
                                const Text(
                                  ' - ',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                                Text(matches[index].teamScore.toString(),
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          ],
                        ),
                        Text(isHome ? 'Home' : 'Away',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600])),
                      ])),
            ),
          ),
        );
      },
    );
  }
}
