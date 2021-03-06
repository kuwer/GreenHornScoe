import 'package:flutter/material.dart';
import 'package:greenhornscoe/model/blog.dart';
import 'package:greenhornscoe/view/blogdetails.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;

  const BlogCard({required this.blog});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => BlogDetails(
             blog: blog,
          ),
        ),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.25,
                width: width,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(
                        blog.thumbnailB,
                        height: height * 0.3,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.red[900],
                        child: Text(
                          "Date: " +
                              blog.dateB.substring(0, blog.dateB.length - 8),
                          style: TextStyle(
                            fontSize: height * 0.015,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                blog.titleB,
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
            ],
          ),
        ),
      ),
    );
  }
}