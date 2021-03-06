
import 'package:flutter/material.dart';
import 'package:greenhornscoe/constants/colors.dart';
import 'package:greenhornscoe/constants/slidebarconstants.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(children: [
      Expanded(
          child: Container(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 32),
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 32, 0, 0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                        child: Text("Our Vision",
                            style: TextStyle(
                                fontFamily: 'GoogleSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 32)),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 25.0),
                                child: Text(
                                  SlidebarConstants.aboutSoc,
                                  style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'GoogleSans'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width /
                                        2.22,
                                    child: Container(
                                      child: _buildCard(
                                          context,
                                          SlidebarConstants.kuwer["Name"]!,
                                          SlidebarConstants.kuwer["Image"]!,
                                          SlidebarConstants.kuwer["LinkedIN"]!,
                                          1),
                                    ),
                                  ),
                                  
                                ],
                              ),
                              
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))))
    ]));
  }
}

Widget _buildCard(
    BuildContext context, String name, String img, String link, int index) {
  return Container(
    width: MediaQuery.of(context).size.width / 2.22,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 23,
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black12,
                    image: DecorationImage(
                      image: new NetworkImage(img),
                    )),
              )),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              name,
              style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  color: AppColors.COLOR_TEAL_LIGHT,
                  fontSize: 18),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: FlatButton(
                onPressed: () => launch(link),
                child: Container(
                  width: 80,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                      child: Text(
                    "Connect",
                    style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        color: Colors.grey),
                  )
                  
                  ),
                ),
              ))
        ],
      ),
    ),
  );
}