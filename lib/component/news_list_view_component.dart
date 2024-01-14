import 'package:flutter/material.dart';
import 'package:sport_app/component/news_card_image_component.dart';
import 'package:sport_app/model/news_model.dart';
import '../constant/news_const.dart';
import 'dart:math';

class NewsListViewComponent extends StatefulWidget {
  const NewsListViewComponent({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewsListViewComponent createState() => _NewsListViewComponent();
}

List<News> getRandomNews(List<News> allNews, int count) {
  if (count <= 0 || allNews.length < count) {
    throw ArgumentError('Invalid count or news list length.');
  }

  List<News> randomNews = [];
  List<News> copyOfNews = List.from(allNews);

  for (int i = 0; i < count; i++) {
    Random random = Random();
    int randomIndex = random.nextInt(copyOfNews.length);
    randomNews.add(copyOfNews.removeAt(randomIndex));
  }

  return copyOfNews;
}

class _NewsListViewComponent extends State<NewsListViewComponent> {
  @override
  void initState() {
    super.initState();
  }

  List<News> newsData = getRandomNews(newsConst, 2);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newsData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: NewsCardImageComponent(news: newsData[index]),
            height: 150,
            width: 300,
          ),
        );
      },
    );
  }
}
