import 'package:flutter/material.dart';
import 'package:sport_app/component/player_group_component.dart';
import 'package:sport_app/config/theme_config.dart';
import 'package:sport_app/model/player_model.dart';
import '../constant/player_const.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

List<Player> _getPlayersByPosition(String position) {
  return playersConst.where((element) => element.position == position).toList();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      width: double.infinity,
      color: ThemeConfig.background,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // const PlayerListViewComponent(),
          SizedBox(
              child: PlayerGroupComponent(
                  groupName: 'Goalkeepers',
                  players: _getPlayersByPosition('Goalkeepers'))),

          SizedBox(
              child: PlayerGroupComponent(
                  groupName: 'Defenders',
                  players: _getPlayersByPosition('Defenders'))),

          SizedBox(
              child: PlayerGroupComponent(
                  groupName: 'Midfielders',
                  players: _getPlayersByPosition('Midfielders'))),

          SizedBox(
              child: PlayerGroupComponent(
                  groupName: 'Forwards',
                  players: _getPlayersByPosition('Forwards'))),
        ]),
      ),
    ));
  }
}
