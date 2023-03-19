import 'package:flutter/material.dart';
import 'package:login/components/card.dart';
import 'package:login/components/two_line_text_field.dart';
import '../components/button.dart';
import '../components/filled_text_field.dart';
import '../components/header.dart';
import '../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyNagrik extends StatefulWidget {
  const VerifyNagrik({Key? key}) : super(key: key);

  @override
  State<VerifyNagrik> createState() => _VerifyNagrikState();
}

class _VerifyNagrikState extends State<VerifyNagrik> {
  data({required bool value}) {
    print(value);
    if (value == false) {
      print('hh');
      showBottomSheet();
    }
    setState(() {
      bool data = value;
    });
  }

  void showBottomSheet() => showModalBottomSheet(
    // enableDrag: false,
    // isDismissible: false,

      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      context: context,
      builder: (context) => Container(
        //height: 800,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 25, 0, 0),
                  child: const Icon(Icons.arrow_back_rounded),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(12, 30, 0, 15),
              child: Row(
                children: const [
                  Text(
                    "Reason to reject ",
                    style: mainTextStyle,
                  ),
                  Text(
                    "Nagrik",
                    style: yellowText,
                  )
                ],
              ),
            ),
            // const Header(HeadText:'Reason to reject ', HeadTextSuffix: 'Nagrik', InfoText: ''),
            Container(
              margin: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              width: double.infinity,
              height: 180,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFF1F1F1)),
                  color: const Color.fromRGBO(246, 242, 242, 1)),

              //phone number
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Center(
                      // heightFactor: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          // icon: Icon(Icons.add),
                          hintText: 'Tell us reason to reject this Nagrik',
                          hintStyle: hStyle,
                          border: InputBorder.none,
                        ),
                        maxLines: 10,
                        minLines: 10,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Button(
                  textdata: const Text('Submit'),
                  color: cButtonColor,
                  onpressed: () {}),
            )
          ],
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBar(
              leading: const BackButton(color: Colors.black),
              elevation: 0,
              backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Header(
                  HeadText: 'Verify ',
                  HeadTextSuffix: 'Nagrik',
                  InfoText: '',
                ),
                // SizedBox(height: 20,),
                Column(
                  children: [
                    twolinefield('Nagrik Name', 'Name Surname'),
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
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
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

                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    // children: Faqs
                    //     .map((pro) => FaqCard(faq: pro))
                    //     .toList()

                    Container(
                      child: const Divider(),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            InkWell(
                                child: const Text('Verify'),
                                onTap: () {
                                  data(value: true);
                                }),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                                child: const Text('Reject'),
                                onTap: () {
                                  data(value: false);
                                }),
                            // SvgPicture.asset(
                            //   'images/verify.svg'
                            //
                            // ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
