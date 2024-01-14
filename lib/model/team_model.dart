import 'image_view_model.dart';

class Team {
  final int id;
  final String name;
  final String shortName;
  final ImageView imagePath;

  Team({
    required this.id,
    required this.name,
    required this.shortName,
    required this.imagePath,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      shortName: json['short_name'],
      imagePath: ImageView.fromJson(json['image_path']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'short_name': shortName,
      'image_path': imagePath.toJson(),
    };
  }
}
