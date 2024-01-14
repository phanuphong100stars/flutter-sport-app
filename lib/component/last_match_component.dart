import 'package:flutter/material.dart';

class LastMatchComponent extends StatefulWidget {
  const LastMatchComponent({super.key});

  @override
  State<LastMatchComponent> createState() => _LastMatchComponentState();
}

class _LastMatchComponentState extends State<LastMatchComponent> {
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
              child: Text('Last Match',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            ),
            Card(
              elevation: 1,

              // color: ThemeConfig.background,
              child: SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sun 7th Jan 2022 - 16:30 ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(children: [
                                        Text(
                                          'The Emirates FA Cup',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14),
                                        ),
                                      ])
                                    ],
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 1)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Text('H',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[600])),
                                      )),
                                ])),
                        Row(children: [
                          Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(children: [
                                Image.asset('image/liverpool.png', height: 120),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text('Liverpool',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400)),
                                ),
                              ])),
                          const Spacer(),
                          const Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Text('0',
                                      style: TextStyle(
                                          fontSize: 56,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey)),
                                  Text(
                                    ' - ',
                                    style: TextStyle(
                                        fontSize: 56,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  ),
                                  Text('2',
                                      style: TextStyle(
                                          fontSize: 56,
                                          fontWeight: FontWeight.w600))
                                ],
                              )),
                        ])
                      ]))),
            ),
          ])),
    ]));
  }
}
