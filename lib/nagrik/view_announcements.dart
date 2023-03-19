import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/detailed_announcement.dart';

import '../components/card.dart';

class ViewAnnouncement extends StatefulWidget {
  const ViewAnnouncement({super.key});

  @override
  State<ViewAnnouncement> createState() => _ViewAnnouncementState();
}

class _ViewAnnouncementState extends State<ViewAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                    child: const Text(
                      "Announcements",
                      style: yellowText,
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: const Text("View announcements by application admin",
                      style: TextStyle(
                        color: Color(0xFF1B1D22),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "today",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Inter-medium',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                          height: 256,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DetailedAnnouncement(),
                                    ),
                                  );
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF4365CD),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 5),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 7),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [Text("02/01/2023")],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Subject of Announcement",
                                              style: TextStyle(
                                                fontFamily: 'Inter-bold',
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 10),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.black),
                                                color: Color.fromARGB(
                                                    255, 255, 200, 0)),
                                            padding: EdgeInsets.all(5),
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  const Expanded(
                                                    flex: 5,
                                                    child: Text(
                                                      "Government provides interest subvention of 3% on short-term crop loans up to Rs.3.00 lakh",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ), // DESCRIPTION
                                                  const Spacer(),
                                                  Expanded(
                                                    flex: 5,
                                                    child: Container(
                                                      height: 120,
                                                      width: 120,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(20),
                                                      ),
                                                      child: Image.asset(
                                                          'images/5236.jpg'),
                                                    ),
                                                  ) // IMAGE
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  bottomLeft:
                                                  Radius.circular(10))),
                                          child: const Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Text(
                                              "Read More",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "1:00 PM",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
