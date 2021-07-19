import 'package:flutter/material.dart';
import 'package:greenhornscoe/api/blogapi.dart';
import 'package:greenhornscoe/model/bloglist.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:greenhornscoe/widgets/blogcard.dart';
import 'package:greenhornscoe/view/blogfeed.dart';



class BlogFeed extends StatefulWidget {
  const BlogFeed({ Key? key }) : super(key: key);

  @override
  _BlogFeedState createState() => _BlogFeedState();
}

class _BlogFeedState extends State<BlogFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<BlogList>(
          future: MediumAPI().getAllBlogs(),
          builder: (context, snapshot) {
            int count = snapshot.data!.blogs.length;
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://img.icons8.com/ios-filled/250/000000/medium-monogram--v1.png",
                            height: 45.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "GreenHorn Scoe",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    for (int i = 0; i < count; i++)
                      BlogCard(
                        blog: snapshot.data!.blogs[i],
                      ),
                  ],
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}