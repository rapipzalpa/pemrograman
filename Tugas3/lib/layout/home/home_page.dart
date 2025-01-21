import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<Map<String, String>> newsList = const [
    {
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "description": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit..."
    },
    {
      "title": "qui est esse",
      "description": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque..."
    },
    {
      "title": "ea molestias quasi exercitationem repellat qui ipsa sit aut",
      "description": "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus..."
    },
    {
      "title": "eum et est occaecati",
      "description": "ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa..."
    },
    {
      "title": "nesciunt quas odio",
      "description": "repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis..."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Post List',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newsList[index]['title']!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(newsList[index]['description']!),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
