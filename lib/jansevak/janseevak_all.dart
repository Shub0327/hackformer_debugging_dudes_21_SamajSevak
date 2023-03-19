import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/jansevak/add_nagrik.dart';
import 'package:login/jansevak/jansevak_dashboard.dart';
import 'package:login/jansevak/jansevak_home.dart';
import 'package:login/jansevak/jansevak_profile.dart';
import 'package:login/jansevak/update_status.dart';
import 'package:login/jansevak/verify_nagrik.dart';
import 'package:login/jansevak/view_announcements_jansevak.dart';
import 'package:login/jansevak/view_complaint_Jansevak.dart';
import 'package:login/nagrik/detailed_announcement.dart';
import 'package:login/nagrik/detailed_complaint.dart';
import 'package:login/nagrik/family_details.dart';
import 'package:login/nagrik/faq.dart';
import 'package:login/nagrik/feedback.dart';
import 'package:login/nagrik/home_screen.dart';
import 'package:login/nagrik/select_jansevak.dart';
import 'package:login/nagrik/setup_profile.dart';
import 'package:login/nagrik/track_complaint.dart';
import 'package:login/nagrik/view_announcements.dart';
import 'package:login/nagrik/view_complaint.dart';
import 'package:login/onboard/splash_page.dart';

import 'create_complaint_Jansevak.dart';
import 'detailed_complaint_Jansevak.dart';


class SamajsevakPages extends StatefulWidget {
  const SamajsevakPages({super.key});

  @override
  State<SamajsevakPages> createState() => _SamajsevakPagesState();
}

class _SamajsevakPagesState extends State<SamajsevakPages> {
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
                      "Samaj Sevak ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "All",
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
                      "Profile",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const JansevakProfile(),
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
                      "Complaints",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ViewComplaintJ(),
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
                      "Create Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                 CreateComplaintJ(),
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
                      "Detailed Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailComplaintJ(),
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
                      "Add Nagrik",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => AddNagrik(),
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
                      "Announcements",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => AnnouncementsJ(),
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
