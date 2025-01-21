import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final Map<String, dynamic> news; // Sesuaikan tipe data

  const NewsCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(news['title'] ?? 'No Title'),
        subtitle: Text(news['description'] ?? 'No Description'),
        onTap: () {
          // Anda bisa tambahkan navigasi atau aksi lain di sini
        },
      ),
    );
  }
}
