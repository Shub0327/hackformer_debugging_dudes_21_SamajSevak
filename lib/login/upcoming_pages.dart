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
import '../jansevak/detailed_complaint_Jansevak.dart';
import '../jansevak/jansevak_profile.dart';

class UpComing extends StatefulWidget {
  const UpComing({super.key});

  @override
  State<UpComing> createState() => _UpComingState();
}

class _UpComingState extends State<UpComing> {
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
                      "Work in ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Progress",
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
                      "J dashboard",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const JansevakDashboard(),
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
                      "FAQ",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Faq(),
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
                      "FeedBack",
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
                      "Track Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TrackComplaint(),
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
                      "Detailed Announcement",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DetailedAnnouncement(),
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
                      "Spalash screen",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => splash_screen(),
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
                      "Detailed Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailComplaint(),
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
                      "Setup Profile",
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
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Family Details",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(
                        () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const FamilyDetails(),
                            ),
                          );
                        },
                      );
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
                      "View All announcements",
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
                            builder: (BuildContext context) => SelectJansevak(),
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
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "JanSevak: Jansevak Profile",
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
              // Center(
              //   child: Container(
              //     height: 42,
              //     margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              //     padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              //     width: double.infinity,
              //     child: Button(
              //       color: kButtonColor,
              //       textdata: Text(
              //         "JanSevak View Announcements",
              //         style: btnStyle,
              //       ),
              //       onpressed: () {
              //         setState(() {
              //           Navigator.of(context).push(
              //             MaterialPageRoute(
              //               builder: (BuildContext context) =>
              //                   const AnnouncementsJ(),
              //             ),
              //           );
              //         });
              //       },
              //     ),
              //   ),
              // ),
              Center(
                child: Container(
                  height: 42,
                  // margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "JanSevak View Complaint",
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
              //btn2
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30, bottom: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "JanSevak Detailed Complaint",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DetailComplaintJ(),
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
                  margin: const EdgeInsets.only(top: 0, bottom: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "JanSevak Announcement",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AnnouncementsJ(),
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
                  margin: const EdgeInsets.only(top: 0, bottom: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Jansevak Update Status",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const UpdateStatus(),
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
                  margin: const EdgeInsets.only(top: 0, bottom: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Jansevak Add Nagrik",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddNagrik(),
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
                  margin: const EdgeInsets.only(top: 0, bottom: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Jansevak Verify Nagrik",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const VerifyNagrik(),
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
