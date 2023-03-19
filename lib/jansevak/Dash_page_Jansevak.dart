import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/jansevak/add_nagrik.dart';
import 'package:login/jansevak/verify_nagrik.dart';
import 'package:login/jansevak/view_complaint_Jansevak.dart';
import 'package:login/nagrik/create_complaint.dart';
import 'package:login/nagrik/faq.dart';
import '../jansevak/detailed_complaint_Jansevak.dart';

class DashPagej extends StatefulWidget {
  const DashPagej({super.key});

  @override
  State<DashPagej> createState() => _DashPagejState();
}

class _DashPagejState extends State<DashPagej> {
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
                      "All Complaints",
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
                               CreateComplaint(),
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
                      "Add Nagrik",
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
                      "Verify Nagrik",
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
              //btn4
            ],
          ),
        ),
      ),
    );
  }
}
