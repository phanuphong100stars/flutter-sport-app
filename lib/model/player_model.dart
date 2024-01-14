import 'image_view_model.dart';

class Player {
  final int id;
  final String fullName;
  final String displayName;
  final int playerNumber;
  final List<ImageView> imageGallaries;

  Player({
    required this.id,
    required this.fullName,
    required this.displayName,
    required this.playerNumber,
    required this.imageGallaries,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      fullName: json['full_name'],
      displayName: json['display_name'],
      playerNumber: json['player_number'],
      imageGallaries:
          json['image_galleries'].map((i) => ImageView.fromJson(i)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'displayName': displayName,
      'playerNumber': playerNumber,
      'imageGalleries':
          imageGallaries.map((imageView) => imageView.toJson()).toList(),
    };
  }
}
