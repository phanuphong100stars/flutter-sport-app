import 'package:flutter/material.dart';
import 'package:sport_app/config/theme_config.dart';
import 'package:sport_app/model/player_model.dart';

class PlayerCardImageComponent extends StatefulWidget {
  final Player player;
  const PlayerCardImageComponent({Key? key, required this.player})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PlayerCardImageComponent createState() => _PlayerCardImageComponent();
}

List<String> _getDisplayName(String name) {
  final nameSplit = name.split(' ');

  if (nameSplit.length == 1) {
    return [
      '',
      nameSplit[0],
    ];
  }

  if (nameSplit.length == 2) {
    return [nameSplit[0], nameSplit[1]];
  }

  if (nameSplit.length >= 3) {
    return [nameSplit[0], nameSplit[1], nameSplit[2]];
  }

  return [];
}

class _PlayerCardImageComponent extends State<PlayerCardImageComponent> {
  Player get player => widget.player;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> displayNames = _getDisplayName(player.displayName);

    return Card(
      elevation: 2,
      child: SizedBox(
        child: Column(children: [
          Stack(children: [
            SizedBox(
              width: 200,
              height: 200,
              child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    child: Image.network(
                      player.img,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Container(
              alignment: Alignment.topLeft,
              // color: ThemeConfig.primaryDark,
              width: 200,
              height: 5,
              decoration: BoxDecoration(
                color: ThemeConfig.primaryDark,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(5.0),
              child: Text(player.playerNumber.toString(),
                  style: const TextStyle(
                      fontSize: 46,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black, // Choose the color of the shadow
                          blurRadius:
                              2.0, // Adjust the blur radius for the shadow effect
                          offset: Offset(2.0,
                              2.0), // Set the horizontal and vertical offset for the shadow
                        ),
                      ])),
            )
          ]),
          SizedBox(
              width: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              displayNames[0].toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              displayNames[1].toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 5),
                              child: Row(children: [
                                Image.network(
                                  player.nationality.flagImg != ''
                                      ? player.nationality.flagImg
                                      : '',
                                  width: 30,
                                ),
                                Container(
                                  margin: const EdgeInsetsDirectional.only(
                                      start: 5),
                                  child: Text(
                                      player.nationality.name != ''
                                          ? player.nationality.name
                                              .toUpperCase()
                                          : '',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      )),
                                )
                              ]),
                            )
                          ],
                        )),
                  ])),
        ]),
      ),
    );
  }
}
