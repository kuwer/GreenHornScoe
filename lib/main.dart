import 'package:flutter/material.dart';
import 'package:greenhornscoe/view/blogfeed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenHorn Scoe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: BlogFeed(),
    );
  }
}


