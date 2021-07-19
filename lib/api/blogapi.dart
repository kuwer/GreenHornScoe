import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:greenhornscoe/model/bloglist.dart';

class MediumAPI {
  String url = "https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@greenhornscoe";

  Future<BlogList> getAllBlogs() async{
    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200){
      return BlogList.fromJSON(
        json.decode(response.body),
        );
    }
    throw Exception("API FAILED");
  }
}