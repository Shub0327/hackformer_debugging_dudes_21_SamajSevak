import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/create_complaint.dart';
import 'package:login/nagrik/faq.dart';
import 'package:login/nagrik/feedback.dart';
import 'package:login/nagrik/view_announcements.dart';
import 'package:login/nagrik/view_complaint.dart';
import '../jansevak/detailed_complaint_Jansevak.dart';
import '../jansevak/jansevak_profile.dart';
import 'know_my_jansevak.dart';

class DashPage extends StatefulWidget {
  const DashPage({super.key});

  @override
  State<DashPage> createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "DashBoard ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Pages",
                      style: yellowText,
                    )
                  ],
                ),
              ),

              //btn1
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Create Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                 CreateComplaint(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),

              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "View Complaints",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ViewComplaint(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              /////////////////////////

              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "View Announcements",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ViewAnnouncement(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              //btn2
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Submit FeedBack",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const FeedBack(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              //btn3
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "View FAQ",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => Faq(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              //btn4
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Know My Jansevak",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const knowmyjansevak(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
