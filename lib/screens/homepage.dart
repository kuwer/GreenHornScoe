import 'package:flutter/material.dart';
import 'package:greenhornscoe/view/blogfeed.dart';
import 'package:greenhornscoe/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Material(
          child: BlogFeed(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}