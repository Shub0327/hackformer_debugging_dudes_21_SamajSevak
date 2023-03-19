import 'package:flutter/material.dart';
import 'package:login/components/header.dart';

class DetailedAnnouncement extends StatefulWidget {
  const DetailedAnnouncement({super.key});

  @override
  State<DetailedAnnouncement> createState() => _DetailedAnnouncementState();
}

class _DetailedAnnouncementState extends State<DetailedAnnouncement> {
  @override
  Widget build(BuildContext context) {
    const String about_jansevak =
        "Jansevak is more than just a platform for community service, it is a community of individuals who are passionate about making a difference. Join us today and start making a positive impact.We are here to provide you with a platform to resolve any public complaints you may have about public services and facilities.Our mission is to ensure that your voice is heard and that your complaints are addressed in a timely and effective manner. Our team of experts works closely with public entities to resolve any issues that you may have, including:";
    const String date = "01/01/2023";
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Header(
                    HeadText: 'Details of ',
                    HeadTextSuffix: 'Announcement',
                    InfoText: ''),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),

                      // child: Image.asset("images/detailed_announcement.png"),

                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(20), // Image border
                        child: Image.asset(
                          'images/detailed_announcement.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "By terna engg",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: Text(
                          "About Jansevak",
                          textAlign: TextAlign.left,
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Text(
                        about_jansevak,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 45, 45, 45),
                            fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
} //test samajla
