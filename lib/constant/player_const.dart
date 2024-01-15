import 'package:sport_app/model/player_model.dart';
import 'package:sport_app/model/nationality_model.dart';
import '../constant/nationality_const.dart';

Nationality _getNationalityById(int id) {
  final nationality = nationalities.firstWhere((element) => element.id == id);

  return nationality;
}

List<Player> playersConst = [
// Goalkeepers:
// Aaron Ramsdale (1) - England (ID: 6)
// Karl Hein (31) - Germany (ID: 8)
// David Raya (22) - Egypt (ID: 1)

  Player(
      id: 1,
      fullName: 'Aaron Ramsdale',
      displayName: 'Aaron Ramsdale',
      playerNumber: 1,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Ramsdale_1510x850_0.jpg?auto=webp&itok=fKQag-VL',
      nationality: _getNationalityById(6),
      position: 'Goalkeepers'),
  Player(
      id: 2,
      fullName: 'Karl Hein',
      displayName: 'Karl Hein',
      playerNumber: 31,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Hein_1510x850_0.jpg?auto=webp&itok=1h3H4_2a',
      nationality: _getNationalityById(11),
      position: 'Goalkeepers'),
  Player(
      id: 3,
      fullName: 'David Raya',
      displayName: 'David Raya',
      playerNumber: 22,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Raya%20website%20profile%20image.png?auto=webp&itok=hUILEdQ8',
      nationality: _getNationalityById(15),
      position: 'Goalkeepers'),

  // Midfielders
// Amario Cozier-Duberry (45) - England (ID: 6)
// Mohamed Elneny (25) - Egypt (ID: 1)
// Fábio Vieira (21) - Portugal (ID: 16)
// Kai Havertz (29) - Germany (ID: 8)
// Bradley Ibrahim (55) - England (ID: 6)
// Jorginho (20) - Italy (ID: 5)
// Myles Lewis-Skelly (59) - England (ID: 6)
// Ethan Nwaneri (63) - England (ID: 6)
// Martin Ødegaard (8) - Norway (ID: 4)
// Thomas Partey (5) - Ghana (ID: 7)
// Declan Rice (41) - England (ID: 6)
// Charles Sagoe (71) - England (ID: 6)
// Emile Smith Rowe (10) - England (ID: 6)
// James Sweet (73) - Wales (ID: 17)

  // render Player from above

  Player(
      id: 5,
      fullName: 'Mohamed Elneny',
      displayName: 'Mohamed Elneny',
      playerNumber: 25,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Elneny_1510x850_0.jpg?auto=webp&itok=smYxXudG',
      nationality: _getNationalityById(1),
      position: 'Midfielders'),
  Player(
      id: 6,
      fullName: 'Fábio Vieira',
      displayName: 'Fábio Vieira',
      playerNumber: 21,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Vieira_1510x850_0.jpg?auto=webp&itok=dYJEyIXC',
      nationality: _getNationalityById(16),
      position: 'Midfielders'),
  Player(
      id: 7,
      fullName: 'Kai Havertz',
      displayName: 'Kai Havertz',
      playerNumber: 29,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Havertz_1510x850_0.jpg?auto=webp&itok=NDHDcy6h',
      nationality: _getNationalityById(8),
      position: 'Midfielders'),
  Player(
      id: 9,
      fullName: 'Jorginho',
      displayName: 'Jorginho',
      playerNumber: 20,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Jorginho_1510x850_0.jpg?auto=webp&itok=bFnNloEb',
      nationality: _getNationalityById(5),
      position: 'Midfielders'),
  Player(
      id: 12,
      fullName: 'Martin Ødegaard',
      displayName: 'Martin Ødegaard',
      playerNumber: 8,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Odegaard_1510x850_0.jpg?auto=webp&itok=s3T162hX',
      nationality: _getNationalityById(4),
      position: 'Midfielders'),
  Player(
      id: 13,
      fullName: 'Thomas Partey',
      displayName: 'Thomas Partey',
      playerNumber: 5,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Partey_1510x850_0.jpg?auto=webp&itok=bhOAiXNI',
      nationality: _getNationalityById(7),
      position: 'Midfielders'),
  Player(
      id: 14,
      fullName: 'Declan Rice',
      displayName: 'Declan Rice',
      playerNumber: 41,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/MicrosoftTeams-image%20%2826%29.png?auto=webp&itok=0JmImXvB',
      nationality: _getNationalityById(6),
      position: 'Midfielders'),
  Player(
      id: 16,
      fullName: 'Emile Smith-Rowe',
      displayName: 'Emile Smith-Rowe',
      playerNumber: 10,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_SmithRowe_1510x850_0.jpg?auto=webp&itok=mDZ6aC3Q',
      nationality: _getNationalityById(6),
      position: 'Midfielders'),

// Defenders:

// Cédric (17) - Portugal (ID: 16)
// Gabriel (6) - Brazil (ID: 2)
// Jakub Kiwior (15) - Poland (ID: 13)
// William Saliba (2) - France (ID: 5)
// Lino Sousa (72) - England (ID: 6)
// Jurriën Timber (12) - Netherlands (ID: 14)
// Takehiro Tomiyasu (18) - Japan (ID: 9)
// Reuell Walters (76) - England (ID: 6)
// Ben White (4) - England (ID: 6)
// Oleksandr Zinchenko (35) - Ukraine (ID: 3)

  // render Player from above
  Player(
      id: 18,
      fullName: 'Cédric',
      displayName: 'Cédric',
      playerNumber: 17,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/MicrosoftTeams-image%20%2828%29_1.png?auto=webp&itok=J-J3CpNi',
      nationality: _getNationalityById(16),
      position: 'Defenders'),
  Player(
      id: 19,
      fullName: 'Gabriel',
      displayName: 'Gabriel',
      playerNumber: 6,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Gabriel_1510x850_0.jpg?auto=webp&itok=dbBQ0QCP',
      nationality: _getNationalityById(2),
      position: 'Defenders'),
  Player(
      id: 20,
      fullName: 'Jakub Kiwior',
      displayName: 'Jakub Kiwior',
      playerNumber: 15,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Kiwior_1510x850_0.jpg?auto=webp&itok=UBUIVH20',
      nationality: _getNationalityById(13),
      position: 'Defenders'),
  Player(
      id: 21,
      fullName: 'William Saliba',
      displayName: 'William Saliba',
      playerNumber: 2,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/MicrosoftTeams-image%20%2831%29_0.png?auto=webp&itok=W5xk4BjC',
      nationality: _getNationalityById(12),
      position: 'Defenders'),

  Player(
      id: 23,
      fullName: 'Jurriën Timber',
      displayName: 'Jurriën Timber',
      playerNumber: 12,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/MicrosoftTeams-image%20%2827%29_0.png?auto=webp&itok=8-zeDQ7-',
      nationality: _getNationalityById(14),
      position: 'Defenders'),
  Player(
      id: 24,
      fullName: 'Takehiro Tomiyasu',
      displayName: 'Takehiro Tomiyasu',
      playerNumber: 18,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/MicrosoftTeams-image%20%2832%29_0.png?auto=webp&itok=2X9D1RAU',
      nationality: _getNationalityById(9),
      position: 'Defenders'),

  Player(
      id: 26,
      fullName: 'Ben White',
      displayName: 'Ben White',
      playerNumber: 4,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_White_1510x850_0.jpg?auto=webp&itok=VC1GGq_A',
      nationality: _getNationalityById(6),
      position: 'Defenders'),
  Player(
      id: 27,
      fullName: 'Oleksandr Zinchenko',
      displayName: 'Oleksandr Zinchenko',
      playerNumber: 35,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Zinchenko_1510x850_0.jpg?auto=webp&itok=7W6BMp5c',
      nationality: _getNationalityById(3),
      position: 'Defenders'),

  // Forwards:

// Gabriel Jesus (9) - Brazil (ID: 2)
// Gabriel Martinelli (11) - Brazil (ID: 2)
// Marquinhos Oliveira - Brazil (No specified number) (ID: 2)
// Reiss Nelson (24) - England (ID: 6)
// Eddie Nketiah (14) - England (ID: 6)
// Bukayo Saka (7) - England (ID: 6)
// Leandro Trossard (19) - Belgium (ID: 10)

  // render Player from above
  Player(
      id: 28,
      fullName: 'Gabriel Jesus',
      displayName: 'Gabriel Jesus',
      playerNumber: 9,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Jesus_1510x850_0.jpg?auto=webp&itok=ygaxcjvE',
      nationality: _getNationalityById(2),
      position: 'Forwards'),
  Player(
      id: 29,
      fullName: 'Gabriel Martinelli',
      displayName: 'Gabriel Martinelli',
      playerNumber: 11,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Martinelli_1510x850.jpg?auto=webp&itok=8ldNPLUE',
      nationality: _getNationalityById(2),
      position: 'Forwards'),
  Player(
      id: 30,
      fullName: 'Marquinhos Oliveira',
      displayName: 'Marquinhos',
      playerNumber: 0,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/marquinhos_.com_headshot.jpg?auto=webp&itok=_bX2eZnI',
      nationality: _getNationalityById(2),
      position: 'Forwards'),
  Player(
      id: 31,
      fullName: 'Reiss Nelson',
      displayName: 'Reiss Nelson',
      playerNumber: 24,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Nelson_1510x850_0.jpg?auto=webp&itok=G-ja6aKr',
      nationality: _getNationalityById(6),
      position: 'Forwards'),
  Player(
      id: 32,
      fullName: 'Eddie Nketiah',
      displayName: 'Eddie Nketiah',
      playerNumber: 14,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Nketiah_1510x850_0.jpg?auto=webp&itok=4bphwxdf',
      nationality: _getNationalityById(6),
      position: 'Forwards'),
  Player(
      id: 33,
      fullName: 'Bukayo Saka',
      displayName: 'Bukayo Saka',
      playerNumber: 7,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Saka_1510x850_0.jpg?auto=webp&itok=iYwho6rd',
      nationality: _getNationalityById(6),
      position: 'Forwards'),
  Player(
      id: 34,
      fullName: 'Leandro Trossard',
      displayName: 'Leandro Trossard',
      playerNumber: 19,
      img:
          'https://www.arsenal.com/sites/default/files/styles/player_card_large/public/images/Headshot_Trossard_1510x850_0.jpg?auto=webp&itok=xRiwTGDR',
      nationality: _getNationalityById(10),
      position: 'Forwards'),
];
