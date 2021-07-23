import 'package:flutter/material.dart';
import 'package:greenhornscoe/constants/colors.dart';
import 'package:greenhornscoe/constants/resourcepageconst.dart';

import 'package:url_launcher/url_launcher.dart';

class ResourcePage extends StatelessWidget {
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
                        child: Text("Resources",
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
                                          RespageConst.blogRes["Name"]!,
                                          RespageConst.blogRes["Image"]!,
                                          RespageConst.blogRes["LinkedIN"]!,
                                          1),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width /
                                        2.22,
                                    child: Container(
                                      child: _buildCard(
                                          context,
                                          RespageConst.college["Name"]!,
                                          RespageConst.college["Image"]!,
                                          RespageConst.college["LinkedIN"]!,
                                          2),
                                    ),
                                  ),
                                ],
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
                                          RespageConst.competitive["Name"]!,
                                          RespageConst.competitive["Image"]!,
                                          RespageConst.competitive["LinkedIN"]!,
                                          3),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width /
                                        2.22,
                                    child: Container(
                                      child: _buildCard(
                                          context,
                                          RespageConst.development["Name"]!,
                                          RespageConst.development["Image"]!,
                                          RespageConst.development["LinkedIN"]!,
                                          4),
                                    ),
                                  ),
                                  
                                ],
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
                                          RespageConst.ml["Name"]!,
                                          RespageConst.ml["Image"]!,
                                          RespageConst.ml["LinkedIN"]!,
                                          5),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width /
                                        2.22,
                                    child: Container(
                                      child: _buildCard(
                                          context,
                                          RespageConst.opensource["Name"]!,
                                          RespageConst.opensource["Image"]!,
                                          RespageConst.opensource["LinkedIN"]!,
                                          6),
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
            height: 24,
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                height: 130,
                width: 155,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    image: DecorationImage(
                      image: new AssetImage(img),
                      fit: BoxFit.fill,
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
                      child: 
                      
                      Text(
                    "click here",
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


// class ResourcePage extends StatefulWidget {
//   const ResourcePage({ Key? key }) : super(key: key);

//   @override
//   _ResourcePageState createState() => _ResourcePageState();
// }

// class _ResourcePageState extends State<ResourcePage> {

//   final List<String> _listItem = [
//     'assets/images/blog.jpeg',
//     'assets/images/college.jpeg',
//     'assets/images/cp.png',
//     'assets/images/development.jpeg',
//     'assets/images/ML.jpeg',
//     'assets/images/opensource.png',
//   ];
//   final List<String> _listItemnames = [
//     'Blogs/Articles',
//     'College Resources',
//     'Competitive Programming',
//     'Development',
//     'Machine Learning',
//     'Open Source',
//   ];

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[600],
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Icon(Icons.arrow_back,),
//         title: Text(""),
        
//       ),
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 width: double.infinity,
//                 height: 250,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/resources.jpeg'),
//                     fit: BoxFit.fill,
//                   )
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     gradient: LinearGradient(
//                       begin: Alignment.bottomRight,
//                       colors: [
//                         Colors.black.withOpacity(.4),
//                         Colors.black.withOpacity(.2),
//                       ]
//                     )
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Expanded(
//                 child: GridView.count(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   children: _listItem.map((item) => Card(
//                     color: Colors.transparent,
//                     elevation: 0,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         image: DecorationImage(
//                           image: AssetImage(item),
//                           fit: BoxFit.cover
//                         )
//                       ),
//                       child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: <Widget>[
                      
//                       Container(
//                         height: 50,
//                         margin: EdgeInsets.symmetric(horizontal: 45),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.grey,
//                         ),
//                         child: Center(child: Text("Machine Learning", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),)),
//                       ),
//                       // SizedBox(height: 30,),
//                     ],
//                   ),
//                     ),
//                   )).toList(),
//                 )
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }