import 'package:flutter/material.dart';
import 'package:sport_app/model/player_model.dart';

class PlayerListViewComponent extends StatefulWidget {
  final List<Player> players;

  const PlayerListViewComponent({Key? key, required this.players})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PlayerListViewComponent createState() => _PlayerListViewComponent();
}

class _PlayerListViewComponent extends State<PlayerListViewComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Player> players = widget.players;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: players.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text('Player Number: ${players[0].playerNumber}'),
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        );
      },
    );
  }
}
