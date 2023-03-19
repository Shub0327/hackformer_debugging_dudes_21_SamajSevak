import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/components/header.dart';
import 'package:login/components/two_line_text_field.dart';
import 'package:login/constants.dart';

class JansevakProfile extends StatefulWidget {
  const JansevakProfile({super.key});

  @override
  State<JansevakProfile> createState() => _JansevakProfileState();
}

class _JansevakProfileState extends State<JansevakProfile> {
  @override
  Widget build(BuildContext context) {
    const String janSevakName = "Samaj Sevak Name";
    const String janSevakId = "120045";
    const String janSevakPhone = "+91 00000000";
    const String janSevakEmail = "jansevak@gmail.com";
    const String janSevakWard = "420";
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Header(
                  HeadText: 'Samaj Sevak ',
                  HeadTextSuffix: 'Profile',
                  InfoText: 'View Your Profile here'),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const EditJanSevakProfile(),
                        ),
                      );
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ))),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Color.fromARGB(255, 84, 84, 84),
                        fontFamily: 'Inter-semi_bold'),
                  ),
                ),
              )
            ],
          ),
          twolinefield('SamajSevak Name', janSevakName),
          twolinefield('SamajSevak ID', janSevakId),
          twolinefield('Email ID', janSevakEmail),
          twolinefield('Phone Number', janSevakPhone),
          twolinefield('Assigned Ward', janSevakWard),
          Center(
            child: Container(
              height: 42,
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 30),
              padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              width: double.infinity,
              child: Button(
                color: kButtonColor,
                textdata: Text(
                  "Logout",
                  style: btnStyle,
                ),
                onpressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class EditJanSevakProfile extends StatefulWidget {
  const EditJanSevakProfile({super.key});

  @override
  State<EditJanSevakProfile> createState() => _EditJanSevakProfileState();
}

class _EditJanSevakProfileState extends State<EditJanSevakProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Header(
              HeadText: 'Edit ',
              HeadTextSuffix: 'Profile',
              InfoText: 'Edit Your Profile Here'),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1B1D22),
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 182, 234, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Phone Number : ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1B1D22),
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "+91 91223456789",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              height: 42,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              width: double.infinity,
              child: Button(
                color: kButtonColor,
                textdata: Text(
                  "Submit",
                  style: btnStyle,
                ),
                onpressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
