import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/components/filled_text_field.dart';
import 'package:login/components/header.dart';
import 'package:login/constants.dart';
import 'package:login/jansevak/verify_nagrik.dart';

class AddNagrik extends StatefulWidget {
  const AddNagrik({super.key});

  @override
  State<AddNagrik> createState() => _AddNagrikState();
}

class _AddNagrikState extends State<AddNagrik> {
  final maxlines = 5;
  String? gender;
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 65),
              child: const Header(
                  HeadText: 'Add ', HeadTextSuffix: 'Nagrik', InfoText: ''),
            ),

            const FilledTextField(
              hinttext: 'Full Name',
            ),
            const FilledTextField(
              hinttext: 'Mobile Number',
            ),
            const FilledTextField(
              hinttext: 'Email Address',
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
            const FilledTextField(
              hinttext: 'Pincode',
            ),
            const FilledTextField(
              hinttext: 'Aadhar Number',
            ),
            const FilledTextField(
              hinttext: 'Voter ID',
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
            const FilledTextField(hinttext: 'Ward'),
            const SizedBox(
              height: 5,
            ),
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
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
