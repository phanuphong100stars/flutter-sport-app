import "package:sport_app/model/nationality_model.dart";

class Player {
  final int id;
  final String fullName;
  final String displayName;
  final int playerNumber;
  final String img;
  final Nationality nationality;
  final String position;

  Player({
    required this.id,
    required this.fullName,
    required this.displayName,
    required this.playerNumber,
    required this.img,
    required this.nationality,
    required this.position,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      fullName: json['full_name'],
      displayName: json['display_name'],
      playerNumber: json['player_number'],
      img: json['img'],
      nationality: Nationality.fromJson(json['nationality']),
      position: json['position'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'displayName': displayName,
      'playerNumber': playerNumber,
      'img': img,
      'nationality': nationality.toJson(),
      'position': position,
    };
  }
}
