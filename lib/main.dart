import 'package:flutter/material.dart';
import 'package:greenhornscoe/screens/homepage.dart';
import 'package:greenhornscoe/view/blogfeed.dart';
import 'package:greenhornscoe/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenHorn Scoe',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyTheme.darkTheme(context),
      home: HomePage(),
    );
  }
}


