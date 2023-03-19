import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:login/components/card.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/create_complaint.dart';
import 'package:login/nagrik/faq.dart';
import 'package:login/nagrik/feedback.dart';
import 'package:login/nagrik/know_my_jansevak.dart';
import 'package:login/nagrik/view_announcements.dart';
import 'package:login/nagrik/view_complaint.dart';

import '../components/button.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(2.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1200.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                // child: Text(
                //   'No. ${imgList.indexOf(item)} image',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ),
          ],
        )),
  ),
))
    .toList();

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 50, 8, 30),
              height: 200,
              width: double.infinity,
              child: Column(children: [
                Expanded(
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                            (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Color(0xB6EADA))
                                .withOpacity(
                                _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ]),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      DsqaureCard(
                        name: 'Create Complaint',
                        icon: Icons.create,
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
                      DsqaureCard(
                        name: 'View Complaints',
                        icon: Icons.search,
                        onpressed: () {
                          setState(() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                ViewComplaint(),
                              ),
                            );
                          });
                        },
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [

                      DsqaureCard(
                        name: 'View FAQs',
                        icon: Icons.article_outlined,
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
                      DsqaureCard(
                        name: 'Know MyJanSevak',
                        icon: Icons.person,
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
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
//NAgrik iD -----------------------------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: const [
                            Text(
                              'My ',
                              style: mainTextStyle,
                            ),
                            Text(
                              'Nagrik ID',
                              style: yellowText,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 182, 234, 218),
                              shape: const StadiumBorder(
                                side: BorderSide(color: Color.fromARGB(255, 182, 234, 218)),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: const Text(
                              'Download',
                              style:
                              TextStyle(color: Color.fromARGB(255, 91, 143, 185), fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      width: double.infinity,
                      height: 260,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xFF1E4DDF), Color(0xFF9EB2ED)],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('images/jansevak_logo.png'),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Name: ',
                                          style: cMainText,
                                        ),
                                        Text(
                                          'Jogn Miler',
                                          style: cMainText,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Text(
                                          'D.O.B: ',
                                          style: cMainText,
                                        ),
                                        Text(
                                          '29/06/2001',
                                          style: cMainText,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 8),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            'Address: ' +
                                                '3/29, Lake View Apt., Valley Road, Mumbai, 400012',
                                            style: cMainText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFC7C7C7),
                                        spreadRadius: 0,

                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(48),
                                      child: Image.asset(
                                          'images/detailed_announcement.png'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: Text(
                                    '234244',
                                    style: TextStyle(
                                        fontFamily: 'Inter-bold',
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                          ])),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            // Container(
            //   height: 42,
            //   margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
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
            //             builder: (BuildContext context) => const DashPage(),
            //           ),
            //         );
            //       });
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
