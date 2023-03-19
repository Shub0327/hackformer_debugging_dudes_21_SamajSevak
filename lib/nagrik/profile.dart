import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/components/card.dart';
import 'package:login/components/two_line_text_field.dart';
import 'package:login/login/login_using_phone.dart';
import '../components/button.dart';
import '../components/header.dart';
import '../constants.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  List<FamilyDetails> Profile = [
    FamilyDetails(
        name: 'Family member 1',
        DOB: ' 12/10/1966',
        address: 'abc',
        adhar_number: '4654845684864',
        voter_id: '48989',
        qualification: '12th pass',
        gender: 'male'),
    FamilyDetails(
        name: 'Family member 1',
        DOB: ' 12/10/1966',
        address: 'abc',
        adhar_number: '4654845684864',
        voter_id: '48989',
        qualification: '12th pass',
        gender: 'male'),
    FamilyDetails(
        name: 'Family member 1',
        DOB: ' 12/10/1966',
        address: 'abc',
        adhar_number: '4654845684864',
        voter_id: '48989',
        qualification: '12th pass',
        gender: 'male'),
    FamilyDetails(
        name: 'Family member 1',
        DOB: ' 12/10/1966',
        address: 'abc',
        adhar_number: '4654845684864',
        voter_id: '48989',
        qualification: '12th pass',
        gender: 'male'),
    FamilyDetails(
        name: 'Family member 1',
        DOB: ' 12/10/1966',
        address: 'abc',
        adhar_number: '4654845684864',
        voter_id: '48989',
        qualification: '12th pass',
        gender: 'male'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              leading: BackButton(color: Colors.black),
              elevation: 0,
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
              // actions: [
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Button(
              //       textdata: Text('Edit Profile'),
              //       color: kButtonColor,
              //       onpressed: () {
              //         setState(
              //           () => context.go('/setup_profile'),
              //         );
              //       },
              //     ),
              //   ),
              // ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Header(
                        HeadText: ' Nagrik ',
                        HeadTextSuffix: 'Profile',
                        InfoText: ' View Your Profile here'),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(
                                () => context.go('/setup_profile'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white,
                            ),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                // const Header(
                //   HeadText: 'My ',
                //   HeadTextSuffix: 'Profile',
                //   InfoText: '',
                // ),
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(color: Colors.grey),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFEFEBEB).withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),

                          // child: Image.asset("images/detailed_announcement.png"),

                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              child:
                              Image.asset('images/detailed_announcement.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Nagrik Name",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Inter-semi_bold',
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),

                    twolinefield('Nagrik ID', '4544564'),
                    twolinefield('My Jansevak', 'Jansevak Name'),
                    twolinefield('Phone Number', '+91 0000000000'),
                    twolinefield('Email ID', 'jansevak@gmail.com'),
                    // twolinefield('Address :','3/29, Lake View Apt., Valley Road, Mumbai, 400012'),

                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Address ',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Inter-semi_bold',
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '3/29, Lake View Apt., Valley Road, Mumbai, 400012',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Inter-semi_bold',
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    twolinefield('Ward Number :', '07'),
                    // DropdownCard(),

                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 28, 0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:
                          Profile.map((pro) => profileCard(pro: pro)).toList()),
                    ),
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    // children: Faqs
                    //     .map((pro) => FaqCard(faq: pro))
                    //     .toList()

                    Container(
                      height: 42,
                      margin: const EdgeInsets.only(top: 30, bottom: 30),
                      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                      width: double.infinity,
                      child: Button(
                        textdata: Text(
                          "Logout",
                          style: btnStyle,
                        ),
                        color: kButtonColor,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPhone();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
