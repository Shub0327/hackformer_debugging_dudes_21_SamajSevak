import 'package:flutter/material.dart';
import 'package:login/jansevak/jansevak_dashboard.dart';
import 'package:login/nagrik/faq.dart';
import 'package:login/nagrik/profile.dart';
import 'package:login/nagrik/view_announcements.dart';

import 'jansevak_profile.dart';

class JansevakHome extends StatefulWidget {
  const JansevakHome({Key? key}) : super(key: key);

  @override
  State<JansevakHome> createState() => _JansevakHomeState();
}

class _JansevakHomeState extends State<JansevakHome> {
  int currentTab = 0;
  final List<Widget> screens = [
    JansevakDashboard(),
    JansevakProfile(),
    profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = JansevakDashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //this Darshboard
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = JansevakDashboard();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color:
                              currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Inter-bold',
                              ),
                            )
                          ],
                        ),
                        minWidth: 40,
                      ),
                    ],
                  ),

                  //this is Notification---------------------------------------------------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = ViewAnnouncement();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color:
                              currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Notification',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Inter-bold',
                              ),
                            )
                          ],
                        ),
                        minWidth: 40,
                      ),
                    ],
                  ),
//this is Profile---------------------------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = JansevakProfile();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color:
                              currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Inter-bold',
                              ),
                            )
                          ],
                        ),
                        minWidth: 40,
                      ),
                    ],
                  ),
//this is Support---------------------------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Faq();
                            currentTab = 4;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color:
                              currentTab == 4 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Support',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Inter-bold',
                              ),
                            )
                          ],
                        ),
                        minWidth: 40,
                      ),
                    ],
                  ),
                ]),
          )),
    );
  }
}
