import 'package:flutter/material.dart';
import 'package:sport_app/component/last_match_component.dart';
import 'package:sport_app/component/last_match_test_component.dart';
import 'package:sport_app/component/next_fixure_component.dart';
import 'package:sport_app/component/player_list_view_component.dart';
import 'package:sport_app/model/player_model.dart';
import '../config/theme_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Arsenal Football Club',
        //     style: TextStyle(color: ThemeConfig.background)),
        title: Text(
          'Arsenal Football Club',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
            color: ThemeConfig.background,
            fontSize: 28,
          )),
        ),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu,
            color: ThemeConfig.background,
          ),
        ),
        backgroundColor: ThemeConfig.primaryDark,
        toolbarHeight: 70,
        centerTitle: false,
        titleSpacing: 10.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            color: ThemeConfig.background,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Match History',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ),
            Container(
                color: ThemeConfig.background,
                height: 100,
                child: const LastMatchTestComponent()),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: NextFixtureComponent(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Players',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ),
            Container(
                color: ThemeConfig.background,
                height: 200,
                child: PlayerListViewComponent(players: [
                  Player(
                    id: 1,
                    fullName: 'Lionel Messi',
                    displayName: 'Lionel',
                    playerNumber: 500,
                    imageGallaries: [],
                  ),
                  Player(
                    id: 1,
                    fullName: 'Lionel Messi',
                    displayName: 'Lionel',
                    playerNumber: 500,
                    imageGallaries: [],
                  ),
                  Player(
                    id: 1,
                    fullName: 'Lionel Messi',
                    displayName: 'Lionel',
                    playerNumber: 500,
                    imageGallaries: [],
                  ),
                  Player(
                    id: 1,
                    fullName: 'Lionel Messi',
                    displayName: 'Lionel',
                    playerNumber: 500,
                    imageGallaries: [],
                  ),
                  Player(
                    id: 1,
                    fullName: 'Lionel Messi',
                    displayName: 'Lionel',
                    playerNumber: 500,
                    imageGallaries: [],
                  )
                ])),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Table',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Teams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Fixtures',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ThemeConfig.secondary,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}