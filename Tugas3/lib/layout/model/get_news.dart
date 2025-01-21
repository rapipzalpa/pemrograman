class News {
  final String title;
  final String description;
  final String imageUrl;

  News({required this.title, required this.description, required this.imageUrl});

  // Contoh parsing JSON jika data berasal dari API
  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
