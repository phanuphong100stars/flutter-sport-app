class League {
  final int id;
  final int sportId;
  final int countryId;
  final String name;
  final bool active;
  final String shortCode;
  final String imagePath;
  final String type;
  final String subType;
  final String lastPlayedAt;
  final int category;
  final bool hasJerseys;

  League({
    required this.id,
    required this.sportId,
    required this.countryId,
    required this.name,
    required this.active,
    required this.shortCode,
    required this.imagePath,
    required this.type,
    required this.subType,
    required this.lastPlayedAt,
    required this.category,
    required this.hasJerseys,
  });

  factory League.fromJson(Map<String, dynamic> json) {
    return League(
      id: json['id'],
      sportId: json['sport_id'],
      countryId: json['country_id'],
      name: json['name'],
      active: json['active'],
      shortCode: json['short_code'],
      imagePath: json['image_path'],
      type: json['type'],
      subType: json['sub_type'],
      lastPlayedAt: json['last_played_at'],
      category: json['category'],
      hasJerseys: json['has_jerseys'],
    );
  }
}
