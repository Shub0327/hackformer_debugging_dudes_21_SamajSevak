import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/components/filled_text_field.dart';
import 'package:login/components/header.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/select_jansevak.dart';

class FamilyDetails extends StatefulWidget {
  const FamilyDetails({super.key});

  @override
  State<FamilyDetails> createState() => _FamilyDetailsState();
}

class _FamilyDetailsState extends State<FamilyDetails> {
  @override
  Widget build(BuildContext context) {
    final maxlines = 5;
    String? gender;
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
        child: Column(
          children: [
            const Header(
                HeadText: 'Family ',
                HeadTextSuffix: 'Details',
                InfoText: 'Enter details of your gamily members'),
            const FilledTextField(
              hinttext: 'FullName',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: maxlines * 24,
                  child: TextField(
                    maxLines: maxlines,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF6F2F2),
                      hintText: 'Address',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      // prefixText: '+91',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF1B1D22),
                  ),
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF6F2F2),
                    hintText: "Date of birth",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    // prefixText: '+91',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1B1D22),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  RadioListTile(
                    title: const Text(
                      "Male",
                      style: TextStyle(
                        color: Color(0xFF1B1D22),
                      ),
                    ),
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text(
                      "Female",
                      style: TextStyle(
                        color: Color(0xFF1B1D22),
                      ),
                    ),
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ),
            const FilledTextField(hinttext: 'Mobile Number'),
            const FilledTextField(hinttext: 'Voter ID'),
            const FilledTextField(hinttext: 'Mobile Number'),
            Center(
              child: Container(
                height: 42,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                width: double.infinity,
                child: Button(
                  color: kButtonColor,
                  textdata: Text(
                    "Submit",
                    style: btnStyle,
                  ),
                  //use Route after demo
                  onpressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const SelectJansevak(),
                        ),
                      );
                    });
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text("Or"),
            ),
            Center(
              child: Container(
                height: 42,
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 30),
                padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                width: double.infinity,
                child: Button(
                  color: kButtonColor,
                  textdata: Text(
                    "Add New Member",
                    style: btnStyle,
                  ),
                  onpressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const FamilyDetails(),
                        ),
                      );
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
