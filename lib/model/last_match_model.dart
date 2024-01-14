class LastMatch {
  final String opponent;
  final int teamScore;
  final int awayScore;
  final bool isHome;
  final String img;

  LastMatch({
    required this.opponent,
    required this.teamScore,
    required this.awayScore,
    required this.isHome,
    required this.img,
  });

  factory LastMatch.fromJson(Map<String, dynamic> json) {
    return LastMatch(
      opponent: json['opponent'],
      teamScore: json['teamScore'],
      awayScore: json['awayScore'],
      isHome: json['isHome'],
      img: json['img'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'opponent': opponent,
      'teamScore': teamScore,
      'awayScore': awayScore,
      'isHome': isHome,
      'img': img
    };
  }
}
