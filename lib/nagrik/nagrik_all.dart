import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/jansevak/add_nagrik.dart';
import 'package:login/jansevak/jansevak_dashboard.dart';
import 'package:login/jansevak/jansevak_home.dart';
import 'package:login/jansevak/update_status.dart';
import 'package:login/jansevak/verify_nagrik.dart';
import 'package:login/jansevak/view_announcements_jansevak.dart';
import 'package:login/jansevak/view_complaint_Jansevak.dart';
import 'package:login/nagrik/create_complaint.dart';
import 'package:login/nagrik/detailed_announcement.dart';
import 'package:login/nagrik/detailed_complaint.dart';
import 'package:login/nagrik/family_details.dart';
import 'package:login/nagrik/faq.dart';
import 'package:login/nagrik/feedback.dart';
import 'package:login/nagrik/home_screen.dart';
import 'package:login/nagrik/know_my_jansevak.dart';
import 'package:login/nagrik/select_jansevak.dart';
import 'package:login/nagrik/setup_profile.dart';
import 'package:login/nagrik/track_complaint.dart';
import 'package:login/nagrik/view_announcements.dart';
import 'package:login/nagrik/view_complaint.dart';
import 'package:login/onboard/splash_page.dart';
import 'package:login/nagrik/view_complaint.dart';

class NagrikPage extends StatefulWidget {
  const NagrikPage({super.key});

  @override
  State<NagrikPage> createState() => _NagrikPageState();
}

class _NagrikPageState extends State<NagrikPage> {
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
                      "Nagrik ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Pages",
                      style: yellowText,
                    )
                  ],
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
                      "Nagrik Home",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const home(),
                          ),
                        );
                      });
                    },
                  ),
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
                      "home",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const JansevakHome(),
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
                      "setup Profile",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SetupProfile(),
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
                      "Select Jansevak",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SelectJansevak(),
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
                      "View Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => ViewComplaint(),
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
                      "Detail Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DetailComplaint(),
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
