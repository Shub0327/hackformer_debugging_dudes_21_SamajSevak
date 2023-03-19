import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../components/button.dart';
import '../components/card.dart';
import '../components/filled_text_field.dart';
import '../components/header.dart';
import 'create_complaint.dart';
import 'home_screen.dart';

class SetupProfile extends StatefulWidget {
  const SetupProfile({super.key});
  @override
  State<SetupProfile> createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {

  final firestore=  FirebaseFirestore.instance.collection('Nagrik');

  // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // var user = _auth.currentUser;
  // CollectionReference ref = FirebaseFirestore.instance.collection('Nagrik');
  // ref.doc(user!.uid).set({ 'role': role});

  final fullnamecontroller=TextEditingController();
  final MobileNum=TextEditingController();
  final EmailAddress=TextEditingController();
  final Address=TextEditingController();
  final pincode=TextEditingController();
  final adhaar=TextEditingController();
  final voterid=TextEditingController();
  final wardnameController=TextEditingController();
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
                  HeadText: 'Setup ',
                  HeadTextSuffix: 'Profile',
                  InfoText: 'Enter your complete details'),
            ),

            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: fullnamecontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter Name',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding:  EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: MobileNum,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: EmailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email  Address',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  controller: Address,
                  decoration: InputDecoration(
                    hintText: 'Enter Home Address',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: pincode,
                  decoration: InputDecoration(
                    hintText: 'Pin code',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: adhaar,
                  decoration: InputDecoration(
                    hintText: 'Adhaar Number',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: voterid,
                  decoration: InputDecoration(
                    hintText: 'Voter ID',
                    // hintStyle: hStyle,
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
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: wardnameController,
                  decoration: InputDecoration(
                    hintText: 'Enter Ward Name',
                    // hintStyle: hStyle,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 42,
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                width: double.infinity,
                child: Button(
                  color: kButtonColor,
                  textdata: Text(
                    "Submit",
                    style: btnStyle,
                  ),
                  onpressed: () {

                    String id=DateTime.now().millisecondsSinceEpoch.toString();

                    final _auth = FirebaseAuth.instance;
                    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
                    var user = _auth.currentUser;
                    CollectionReference ref = FirebaseFirestore.instance.collection('Nagrik');

                    ref.doc(user!.uid).set({
       'Full_Name': fullnamecontroller.text.toString(),
    'Mobile_Number': MobileNum.text.toString(),
     'Email_Address': EmailAddress.toString(),
      'Home_Address' : Address.text.toString(),
    'Pin_code' : pincode.text.toString(),
      'Addhar_Number' : adhaar.text.toString(),
       'Voter_ID' : voterid.text.toString(),
       'Ward_Name' : wardnameController.text.toString(),

    });


                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              home()

                      ),
                    );
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

//
//           ],
//         ),
//       ),
//     );
//   }
// }
