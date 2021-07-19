class Blog {
  String titleB;
  String dateB;
  String linkB;
  String authorB;
  String thumbnailB;
  String descriptionB;
  String contentB;

  Blog(
      {required this.titleB,
      required this.dateB,
      required this.linkB,
      required this.authorB,
      required this.thumbnailB,
      required this.descriptionB,
      required this.contentB});

  factory Blog.fromJSON(Map<String, dynamic> json) {
    return Blog(
      titleB: json["title"],
      dateB: json['pubDate'],
      linkB: json['link'],
      authorB: json['author'],
      thumbnailB: json['thumbnail'],
      descriptionB: json['description'],
      contentB: json['content']
    );
  }
}