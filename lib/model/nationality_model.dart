class Nationality {
  final int id;
  final String name;
  final String flagImg;

  Nationality({
    required this.id,
    required this.name,
    required this.flagImg,
  });

  factory Nationality.fromJson(Map<String, dynamic> json) {
    return Nationality(
      id: json['id'],
      name: json['name'],
      flagImg: json['flag_img'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'flag_img': flagImg,
    };
  }
}
