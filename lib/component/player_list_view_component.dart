import 'package:flutter/material.dart';
import 'package:sport_app/component/player_card_image_component.dart';
import 'package:sport_app/model/player_model.dart';
import '../constant/player_const.dart';
import 'dart:math';

class PlayerListViewComponent extends StatefulWidget {
  const PlayerListViewComponent({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PlayerListViewComponent createState() => _PlayerListViewComponent();
}

class _PlayerListViewComponent extends State<PlayerListViewComponent> {
  @override
  void initState() {
    super.initState();
  }

  List<Player> getRandomPlayers(List<Player> allPlayers, int count) {
    if (count <= 0 || allPlayers.length < count) {
      throw ArgumentError('Invalid count or player list length.');
    }

    List<Player> randomPlayers = [];
    List<Player> copyOfPlayers = List.from(allPlayers);

    for (int i = 0; i < count; i++) {
      Random random = Random();
      int randomIndex = random.nextInt(copyOfPlayers.length);
      randomPlayers.add(copyOfPlayers.removeAt(randomIndex));
    }

    return randomPlayers;
  }

  @override
  Widget build(BuildContext context) {
    List<Player> players = getRandomPlayers(playersConst, 6);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: players.length,
      itemBuilder: (context, index) {
        if (index + 1 <= 5) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlayerCardImageComponent(
              player: players[index],
            ),
          );
        }
        return Container();
      },
    );
  }
}
