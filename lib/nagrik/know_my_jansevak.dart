import 'package:flutter/material.dart';
import 'package:login/components/card.dart';
import 'package:login/components/two_line_text_field.dart';
import '../components/header.dart';

class knowmyjansevak extends StatefulWidget {
  const knowmyjansevak({super.key});

  @override
  State<knowmyjansevak> createState() => _knowmyjansevakState();
}

class _knowmyjansevakState extends State<knowmyjansevak> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              leading: BackButton(color: Colors.black),
              elevation: 0,
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Header(
                  HeadText: 'My ',
                  HeadTextSuffix: 'SamajSevak',
                  InfoText: 'Information About SamajSevak',
                ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [

                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                    twolinefield('SamajSevak Name', 'Name Surname'),
                    twolinefield('SamajSevak ID', 'XX0000000X00'),
                    twolinefield('Phone Number', '+91 00000000'),
                    twolinefield('Email ID', 'samajsevak@gmail.com'),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        sqaureCard('Complaints Received', '00'),
                        sqaureCard('Complaints Resolved', '00'),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        sqaureCard('Nagrik Associated', '00'),
                        sqaureCard('Average Rating', '00'),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
