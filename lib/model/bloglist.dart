import 'package:greenhornscoe/model/blog.dart';

class BlogList {
  List<Blog> blogs;

  BlogList({required this.blogs});

  factory BlogList.fromJSON(Map<String, dynamic> json) {
    Iterable blogsList = json['items'];
    List<Blog> allBlogs = blogsList.map((blog) => Blog.fromJSON(blog)).toList();

    return BlogList(blogs: allBlogs);
  }
}