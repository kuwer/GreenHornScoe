import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:greenhornscoe/login/authservice.dart';
import 'package:greenhornscoe/screens/homepage.dart';
import 'package:greenhornscoe/view/blogfeed.dart';
import 'package:greenhornscoe/widgets/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: AuthService().handleAuth(),
    );
  }
}


