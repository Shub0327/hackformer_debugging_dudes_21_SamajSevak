import 'package:flutter/material.dart';
import 'package:login/jansevak/add_nagrik.dart';
import 'package:login/jansevak/verify_nagrik.dart';
import 'package:login/nagrik/create_complaint.dart';
import '../components/Charts/charts.dart';
import '../components/card.dart';
import '../constants.dart';
import '../nagrik/view_complaint.dart';

class JansevakDashboard extends StatefulWidget {
  const JansevakDashboard({Key? key}) : super(key: key);

  @override
  State<JansevakDashboard> createState() => _JansevakDashboardState();
}

class _JansevakDashboardState extends State<JansevakDashboard> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //this is header
            Container(
              margin: EdgeInsets.fromLTRB(23, 60, 0, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Hello ', style: mainTextStyle),
                      Text('SamajSevak  ', style: yellowText
                          //   const TextStyle(
                          //       // fontWeight: FontWeight.bold,
                          //       // color: Colors.orange,
                          //       // fontSize: 20),
                          ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Row(
                      children: [
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(25),
                            child:
                                Image.asset('images/detailed_announcement.png'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //this is total complaints
            Container(
              margin: EdgeInsets.fromLTRB(14, 0, 15, 20),
              padding: EdgeInsets.fromLTRB(18, 11, 26, 12),
              width: double.infinity,
              height: 131,
              decoration: BoxDecoration(
                color: Color(0xcc627cca),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 21, 0),
                    width: 108,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(54),
                      gradient: LinearGradient(
                        begin: Alignment(-0.565, -0.833),
                        end: Alignment(0.398, 0.944),
                        colors: <Color>[Color(0xffffb371), Color(0x664365cd)],
                        stops: <double>[0.284, 1],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // ellipse439f5R (450:27)
                          left: 11,
                          top: 11,
                          child: Align(
                            child: SizedBox(
                              width: 85,
                              height: 85,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(42.5),
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          top: 20,
                          child: Align(
                            child: Expanded(
                              child: Text(
                                '32',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2200000286,
                                  letterSpacing: 0.200000003,
                                  color: Color(0xff808080),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 28.0,
                          top: 70,
                          child: Align(
                            child: SizedBox(
                              width: 52,
                              height: 13,
                              child: Text(
                                'Complaint',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Inter-semi_bold',
                                  fontWeight: FontWeight.w600,
                                  height: 1.2200000763,
                                  letterSpacing: 0.200000003,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 41.5, 0, 19),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 9.5),
                          child: Text(
                            'Total Complaints',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              height: 1.2200000763,
                              letterSpacing: 0.200000003,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            'last update 4th  Feb 2023',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              height: 1.2200000763,
                              letterSpacing: 0.200000003,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //this is cards
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      JansevakBCard(
                        name1: 'All ',
                        name2: 'Complaint',
                        icon: Icons.add,
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
                      JansevakYCard(
                        name1: 'Create ',
                        name2: 'Complaint',
                        icon: Icons.add,
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
                    ],
                  ),
                  Row(
                    children: [
                      JansevakBCard(
                        name1: 'Add ',
                        name2: 'Nagrik',
                        icon: Icons.add,
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
                      JansevakYCard(
                        name1: 'Verify ',
                        name2: 'Nagrik',
                        icon: Icons.add,
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
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            //this Statical

            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0x114365cd),
                ),
                child: Center(child: PieChartSample2())),

            // Container(
            //   height: 42,
            //   margin: const EdgeInsets.fromLTRB(0, 40, 0, 10),
            //   padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
            //   width: double.infinity,
            //   child: Button(
            //     color: kButtonColor,
            //     textdata: Text(
            //       'DashBoard Pages',
            //       style: btnStyle,
            //     ),
            //     onpressed: () {
            //       setState(() {
            //         Navigator.of(context).push(
            //           MaterialPageRoute(
            //             builder: (BuildContext context) => const DashPagej(),
            //           ),
            //         );
            //       });
            //     },
            //   ),
            // ),

            // Container(
            //     margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(5),
            //       color: Color(0x114365cd),
            //     ),
            //     child: Center(child: PieChartSample2())
            // ),
          ],
        ),
      ),
    );
  }
}
