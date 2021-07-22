import 'package:flutter/material.dart';
import 'package:greenhornscoe/screens/slidescreen/faq.dart';
import 'package:greenhornscoe/screens/slidescreen/vision.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/87700987?s=400&u=6909f247b9e761b84d4e1af7c74a4e56448df012&v=4";
    return Drawer(
      child: ListView(
        children: <Widget>[
          Divider(
            height: 10,
            color: Colors.transparent,
          ),
          new ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: new Text(
              "Profile",
              style: TextStyle(
                fontFamily: 'GoogleSans',
                fontSize: 20,),
              ),
            subtitle: new Text(
              "Logged In",
              style: TextStyle(
                fontFamily: 'GoogleSans',
                fontSize: 13,
              ),
            ),
          ),
          new Divider(),

          new ListTile(
            title: new Text(
              "Resources",
              style: TextStyle(fontFamily: 'GoogleSans', fontSize: 16),
            ),
            trailing: new Icon(Icons.folder_open_rounded),
            onTap: (){},
          ),
          new Divider(),

          new ListTile(
            title: new Text(
              "Vision",
              style: TextStyle(fontFamily: 'GoogleSans', fontSize: 16),
            ),
            trailing: new Icon(Icons.arrow_right),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new About()));
            },
          ),

          new ListTile(
            title: new Text(
              "FAQ's",
              style: TextStyle(fontFamily: 'GoogleSans', fontSize: 16),
            ),
            trailing: new Icon(Icons.arrow_right),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new FAQS())
              );
            },
          ),

          new ListTile(
            title: new Text(
              "Help Center",
              style: TextStyle(fontFamily: 'GoogleSans', fontSize: 16),
            ),
            trailing: new Icon(Icons.arrow_right),
            onTap: (){},
          ),
          
          new Divider(),
          new ListTile(
            title: new Text(
              "Logout",
              style: TextStyle(fontFamily: 'GoogleSans', fontSize: 16),
            ),
            trailing: new Icon(Icons.logout),
            onTap: (){},
          ),
          new Divider(),
        ],
      )
    );
  }
}