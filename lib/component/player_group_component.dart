import 'package:flutter/material.dart';
import 'package:sport_app/component/player_list_card_component.dart';
import 'package:sport_app/model/player_model.dart';

class PlayerGroupComponent extends StatefulWidget {
  final String groupName;
  final List<Player> players;

  const PlayerGroupComponent(
      {super.key, required this.groupName, required this.players});

  @override
  State<PlayerGroupComponent> createState() => _PlayerGroupComponentState();
}

class _PlayerGroupComponentState extends State<PlayerGroupComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(widget.groupName,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
          Text('(${widget.players.length})',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 22,
              ))
        ]),
        const SizedBox(
          height: 20,
        ),
        GridView.builder(
            itemCount: widget.players.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // new line
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 230,
            ),
            itemBuilder: (context, index) {
              return PlayerListCardComponent(player: widget.players[index]);
            })
      ]),
    );
  }
}
