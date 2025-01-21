import 'package:flutter/material.dart';
import 'news_card.dart';

class NewsPage extends StatelessWidget {
  final List<Map<String, dynamic>> newsList = [
    {
      'title': 'Breaking News 1',
      'description': 'This is the description for breaking news 1.',
    },
    {
      'title': 'Breaking News 2',
      'description': 'This is the description for breaking news 2.',
    },
  ];

  NewsPage({Key? key}) : super(key: key); // Hilangkan keyword `const`

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsCard(news: newsList[index]); // Panggil widget NewsCard
        },
      ),
    );
  }
}
