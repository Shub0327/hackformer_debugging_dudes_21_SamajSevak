import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackComplaint extends StatefulWidget {
  const TrackComplaint({super.key});

  @override
  State<TrackComplaint> createState() => _TrackComplaintState();
}

class _TrackComplaintState extends State<TrackComplaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        "Track ",
                        style: mainTextStyle,
                      ),
                      Text(
                        "Complaints",
                        style: yellowText,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  // padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(50, 250, 202, 161),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFFF953A),
                    ),
                  ),
                  margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Image.asset(
                          'images/comp.png',
                          height: 70,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(15, 20, 0, 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Complaint ID : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Inter-medium',
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "#12345",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Inter-medium',
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(20, 20, 0, 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Placed on : ",
                                      style: liteTextStyle,
                                    ),
                                    Text(
                                      "19 02 2023",
                                      style: lbTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 5, 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Category : ",
                                      style: liteTextStyle,
                                    ),
                                    Text(
                                      "Personal",
                                      style: lbTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Subject : ",
                                      style: liteTextStyle,
                                    ),
                                    Text(
                                      "Educational",
                                      style: lbTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Column(
                      children: [
                        TimelineTile(
                          afterLineStyle: LineStyle(color: Colors.orange),
                          isFirst: true,
                          endChild: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: const Text("Complaint Placed",
                                      style: TextStyle(
                                        color: Color(0xFF1B1D22),
                                      )),
                                ),
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 5, 35, 15),
                                  child: const Text("October 21 2021",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                                Visibility(
                                  visible:
                                  true, //  VISIBILITY OF COMPLAINT STATUS DESCRIPTION
                                  child: Flexible(
                                    child: Container(
                                        alignment:
                                        AlignmentDirectional.topStart,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              50, 250, 202, 161),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xFFFF953A),
                                          ),
                                        ),
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 5, 30, 30),
                                        child: const Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(10, 10, 5, 5),
                                          child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard "),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          indicatorStyle: const IndicatorStyle(
                            indicatorXY: 0,
                            width: 15,
                            color: Colors.orange,
                          ),
                        ),
                        TimelineTile(
                          //afterLineStyle: LineStyle(color: Colors.orange),
                          endChild: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: const Text("Complaint Accepted",
                                      style: TextStyle(
                                        color: Color(0xFF1B1D22),
                                      )),
                                ),
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 5, 35, 15),
                                  child: const Text("October 21 2021",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                                Visibility(
                                  visible:
                                  true, //  VISIBILITY OF COMPLAINT STATUS DESCRIPTION
                                  child: Flexible(
                                    child: Container(
                                        alignment:
                                        AlignmentDirectional.topStart,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              50, 250, 202, 161),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xFFFF953A),
                                          ),
                                        ),
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 5, 30, 30),
                                        child: const Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(10, 10, 5, 5),
                                          child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard "),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          indicatorStyle: const IndicatorStyle(
                            indicatorXY: 0,
                            width: 15,
                            color: Colors.orange,
                          ),
                        ),
                        TimelineTile(
                          //afterLineStyle: LineStyle(color: Colors.orange),
                          endChild: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: const Text("Complaint Under Process",
                                      style: TextStyle(
                                        color: Color(0xFF1B1D22),
                                      )),
                                ),
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 5, 35, 15),
                                  child: const Text("October 21 2021",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                                Visibility(
                                  visible:
                                  true, //  VISIBILITY OF COMPLAINT STATUS DESCRIPTION
                                  child: Flexible(
                                    child: Container(
                                        alignment:
                                        AlignmentDirectional.topStart,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              50, 250, 202, 161),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xFFFF953A),
                                          ),
                                        ),
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 5, 30, 30),
                                        child: const Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(10, 10, 5, 5),
                                          child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard "),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          indicatorStyle: const IndicatorStyle(
                            indicatorXY: 0,
                            width: 15,
                            color: Colors
                                .grey, // color changes to orange when visibility of description is true
                          ),
                        ),
                        TimelineTile(
                          //afterLineStyle: LineStyle(color: Colors.orange),
                          isLast: true,
                          endChild: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: const Text("Complaint Resolved",
                                      style: TextStyle(
                                        color: Color(0xFF1B1D22),
                                      )),
                                ),
                                Container(
                                  margin:
                                  const EdgeInsets.fromLTRB(20, 5, 35, 15),
                                  child: const Text("October 21 2021",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ),
                                Visibility(
                                  visible:
                                  true, //  VISIBILITY OF COMPLAINT STATUS DESCRIPTION
                                  child: Flexible(
                                    child: Container(
                                        alignment:
                                        AlignmentDirectional.topStart,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              50, 250, 202, 161),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xFFFF953A),
                                          ),
                                        ),
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 5, 30, 30),
                                        child: const Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(10, 10, 5, 5),
                                          child: Text(
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard "),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          indicatorStyle: const IndicatorStyle(
                            indicatorXY: 0,
                            width: 15,
                            color: Colors
                                .grey, // color changes to orange when visibility of description is true
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
