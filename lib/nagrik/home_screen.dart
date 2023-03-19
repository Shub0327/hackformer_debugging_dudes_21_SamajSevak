import 'package:flutter/material.dart';
import 'package:login/nagrik/create_complaint.dart';
import 'package:login/nagrik/dashboard.dart';
import 'package:login/nagrik/profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    CreateComplaint(),
    profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CreateComplaint();
                },
              ),
            );
          },
          child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = Dashboard();
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Create Complaint',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Inter-bold',
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = profile();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color:
                              currentTab == 1 ? Colors.blue : Colors.grey,
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
                ]),
          )),
    );
  }
}
