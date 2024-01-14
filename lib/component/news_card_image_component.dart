import 'package:flutter/material.dart';
import 'package:sport_app/config/theme_config.dart';
import 'package:sport_app/model/news_model.dart';

class NewsCardImageComponent extends StatefulWidget {
  final News news;
  const NewsCardImageComponent({Key? key, required this.news})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewsCardImageComponent createState() => _NewsCardImageComponent();
}

class _NewsCardImageComponent extends State<NewsCardImageComponent> {
  News get news => widget.news;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SizedBox(
        child: Column(children: [
          Stack(children: [
            SizedBox(
              width: 400,
              height: 150,
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    child: Image.network(
                      news.coverImage,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Container(
              alignment: Alignment.topLeft,
              // color: ThemeConfig.primaryDark,
              width: 400,
              height: 5,
              decoration: BoxDecoration(
                color: ThemeConfig.primaryDark,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
          ]),
          SizedBox(
              width: 400,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news.newsType.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              news.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ])),
        ]),
      ),
    );
  }
}
