import 'package:flutter/material.dart';
import 'package:sport_app/config/theme_config.dart';

class NextFixtureComponent extends StatefulWidget {
  const NextFixtureComponent({super.key});

  @override
  State<NextFixtureComponent> createState() => _NextFixtureComponentState();
}

class _NextFixtureComponentState extends State<NextFixtureComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Next Fixture',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            ),
            Card(
              elevation: 2,
              color: ThemeConfig.background,
              child: SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Saturday 20th June 2022 - 17:30 ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(children: [
                                  const Text(
                                    'Emirates Stadium | ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  Text(
                                    'Premier League',
                                    style: TextStyle(
                                        color: Colors.grey[900], fontSize: 14),
                                  ),
                                ])
                              ],
                            )),
                        Row(children: [
                          Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(children: [
                                Image.asset('image/arsenal.png', height: 100),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text('Arsenal',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400)),
                                ),
                              ])),
                          const Spacer(),
                          Text("Vs",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28)),
                          const Spacer(),
                          Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(children: [
                                Image.asset('image/cystal.png', height: 100),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text('Crystal Palace',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400)),
                                ),
                              ])),
                        ])
                      ]))),
            ),
          ])),
    ]));
  }
}
