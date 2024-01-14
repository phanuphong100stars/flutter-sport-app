import 'package:flutter/material.dart';

class NewsListViewComponent extends StatefulWidget {
  const NewsListViewComponent({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewsListViewComponent createState() => _NewsListViewComponent();
}

class _NewsListViewComponent extends State<NewsListViewComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Text('News');
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: players.length,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         child: Text('Player Number: ${players[0].playerNumber}'),
    //         height: 200,
    //         width: 200,
    //         color: Colors.amber,
    //       ),
    //     );
    //   },
    // );
  }
}
