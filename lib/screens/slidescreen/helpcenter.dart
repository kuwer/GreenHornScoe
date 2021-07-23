import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:greenhornscoe/constants/colors.dart';
import 'package:greenhornscoe/constants/slidebarconstants.dart';


enum FeedbackOption { login, suggestion, complaint, other }
var feedbackopt = 1;

class MyFeedback extends StatefulWidget {
  @override
  _MyFeedbackState createState() => _MyFeedbackState();
}

class _MyFeedbackState extends State<MyFeedback> {
  final TextEditingController textController = new TextEditingController();
  late Map<String, dynamic> user;

  Map<int, String> feedbackOption = SlidebarConstants.feedbackOptionsMap;
  String uid = "";


  submitFeedback() {
    if (textController.text.isNotEmpty) {
      sendMail();
    } else {
      Fluttertoast.showToast(
        msg: "Feedback cannot be empty. Please try again.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
    }
  }

  void sendMail() async {
    String mailBody = "<br><br>" +
        user["name"] +
        "<br>" +
        user["year"] +
        " year " +
        user["branch"] +
        "<br>";
    final MailOptions mailOptions = MailOptions(
      body: textController.text + mailBody,
      subject: "GreenHorn App Feedback: " + feedbackOption[feedbackopt]!,
      recipients: SlidebarConstants.feedbackRecipients,
      isHTML: true,
      ccRecipients: SlidebarConstants.feedbackCCRecipients,
    );
    try {
      await FlutterMailer.send(mailOptions);
      setState(() {
        textController.text = "";
        feedbackopt = 1;
      });
      Fluttertoast.showToast(msg: "Thank you for your feedback", 
          toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
    } on PlatformException catch (error) {
      Fluttertoast.showToast(msg: "Some error occured. Please try again later.", 
          toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
    } catch (error) {
      Fluttertoast.showToast(msg: "Some error occured. Please try again later.",
          toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
    }
  }

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
                        child: Text("Feedback",
                            style: TextStyle(
                                fontFamily: 'GoogleSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 32)),
                      ),
                      SizedBox(height: 25),
                      Expanded(
                          child: SizedBox(
                              height: 120.0,
                              child: ListView(
                                padding:
                                    const EdgeInsets.fromLTRB(32, 0, 32, 0),
                                children: <Widget>[
                                  Text(
                                    "Give your valuable Feedback/Suggestions/Complain/Issues:",
                                    style: TextStyle(
                                      fontFamily: 'GoogleSans',
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 30.0),
                                  
                                  buildFeedbackForm(),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        90, 8.0, 90, 0),
                                    child: Container(
                                      height: 45,
                                      child: FlatButton(
                                          color: AppColors.COLOR_TEAL_LIGHT,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              side: BorderSide(
                                                color:
                                                    Colors.teal,
                                              )),
                                          child: Text("Submit",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'GoogleSans',
                                                  fontSize: 15)),
                                          onPressed: () {
                                            submitFeedback();
                                          }),
                                    ),
                                  ),
                                  SizedBox(height:18.0)
                                ],
                              )))
                    ],
                  ))))
    ])
        );
  }

  buildFeedbackForm() {
    return Container(
        height: 200.0,
        child: Stack(children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 32, 0, 32),
            child: TextField(
              controller: textController,
              maxLines: 10,
              decoration: InputDecoration(
                  hintText: "Please breifly describe the issue",
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xffc5c5c5),
                      fontStyle: FontStyle.italic,
                      fontFamily: 'GoogleSans'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe5e5e5)),
                  )),
            ),
          ),
        ]));
  }
}

