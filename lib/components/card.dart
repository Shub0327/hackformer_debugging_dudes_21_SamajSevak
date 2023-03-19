import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/detailed_complaint.dart';

import '../jansevak/detailed_complaint_Jansevak.dart';

class ComplaintCard extends StatefulWidget {
  ComplaintCardDetails complaint;

  ComplaintCard({Key? key, required this.complaint}) : super(key: key);

  @override
  State<ComplaintCard> createState() => _ComplaintCardState();
}

class _ComplaintCardState extends State<ComplaintCard> {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.parse(widget.complaint.date);
    var formattedDate = '${date.day}/${date.month}/${date.year}';
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: Button(
        color: cButtonColor,
        textdata: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nagrik ID: ${widget.complaint.id}',
                    style: btnStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Category: ${widget.complaint.id}',
                    style: btnStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text('Subject: ${widget.complaint.id}', style: btnStyle),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(67, 101, 205, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.complaint.status,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(formattedDate)),
                ],
              ),
            )
          ],
        ),
        onpressed: () {
          // Perform action when button is pressed
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => DetailComplaint(),
              ),
            );
          });
        },
      ),
    );
  }
}

class ComplaintCardDetails {
  String id;
  String category;
  String subject;
  String date;
  String status;

  ComplaintCardDetails(
      {this.id = '',
      this.category = '',
      this.subject = '',
      this.date = '',
      this.status = 'open'});
}

// This is jansevak complaint card---------------------------------------
class JComplaintCardDetails {
  String id;
  String category;
  String subject;
  String date;
  String status;

  JComplaintCardDetails(
      {this.id = '',
      this.category = '',
      this.subject = '',
      this.date = '',
      this.status = 'open'});
}

class JComplaintCard extends StatefulWidget {
  JComplaintCardDetails complaint;

  JComplaintCard({Key? key, required this.complaint}) : super(key: key);

  @override
  State<JComplaintCard> createState() => _JComplaintCardState();
}

class _JComplaintCardState extends State<JComplaintCard> {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.parse(widget.complaint.date);
    var formattedDate = '${date.day}/${date.month}/${date.year}';
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: Button(
        color: cButtonColor,
        textdata: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nagrik ID: ${widget.complaint.id}',
                    style: btnStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Category: ${widget.complaint.id}',
                    style: btnStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text('Subject: ${widget.complaint.id}', style: btnStyle),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(67, 101, 205, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.complaint.status,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(formattedDate)),
                ],
              ),
            )
          ],
        ),
        onpressed: () {
          // Perform action when button is pressed
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => DetailComplaintJ(),
              ),
            );
          });
        },
      ),
    );
  }
}

class AnnouncementCard extends StatefulWidget {
  AnnouncementCardDetails announcement;

  AnnouncementCard({Key? key, required this.announcement}) : super(key: key);

  @override
  State<ComplaintCard> createState() => _ComplaintCardState();
}

class AnnouncementCardState extends State<ComplaintCard> {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.parse(widget.complaint.date);
    var formattedDate = '${date.day}/${date.month}/${date.year}';
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.fromLTRB(0, 0, 28, 0),
      child: Button(
        color: kButtonColor,
        textdata: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nagrik ID: ${widget.complaint.id}',
                    style: btnStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Category: ${widget.complaint.id}',
                    style: btnStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text('Subject: ${widget.complaint.id}', style: btnStyle),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(67, 101, 205, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.complaint.status,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(formattedDate)),
                ],
              ),
            )
          ],
        ),
        onpressed: () {
          // Perform action when button is pressed
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => DetailComplaint(),
              ),
            );
          });
        },
      ),
    );
  }
}

class AnnouncementCardDetails {
  String id;
  String subject;
  String description;
  String date;
  String time;

  AnnouncementCardDetails(
      {this.id = '',
      this.description = '',
      this.subject = '',
      this.date = '',
      this.time = ''});
}

class FaqCard extends StatefulWidget {
  FaqDetails faq;

  FaqCard({Key? key, required this.faq}) : super(key: key);

  @override
  State<FaqCard> createState() => _FaqCardState();
}

class _FaqCardState extends State<FaqCard> {
  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      titleBorderRadius: const BorderRadius.all(Radius.circular(15)),
      contentBorderRadius: const BorderRadius.all(Radius.circular(10)),
      collapsedTitleBackgroundColor: const Color.fromRGBO(246, 242, 242, 1),
      expandedTitleBackgroundColor: const Color.fromRGBO(246, 242, 242, 1),
      title: widget.faq.question,
      titlePadding: const EdgeInsets.all(15),
      content: widget.faq.content,
    );
  }
}

class FaqDetails {
  String question;
  String content;

  FaqDetails({this.question = '', this.content = ''});
}

//------------------------------- This is Select jansevak Card--------------------------------------
class sqaureCard extends StatelessWidget {
  String name, value;

  sqaureCard(this.name, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0,
      width: 111.0,
      color: Colors.transparent,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: hStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'Inter-bold',
                    color: Color(0xFFFF953A),
                    fontSize: 40.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
    );
  }
}

//------------------------------ THis is family data card---------------------------------------------
class FamilyDetails {
  String name;
  String DOB;
  String address;
  String adhar_number;
  String voter_id;
  String qualification;
  String gender;

  FamilyDetails(
      {this.name = '',
      this.DOB = '',
      this.address = '',
      this.adhar_number = '',
      this.voter_id = '',
      this.qualification = '',
      this.gender = ''});
}

// class familyData extends StatefulWidget {
//
//   FamilyDetails pro;
//   familyData({Key? key,required this.pro}) : super(key: key);
//
//   @override
//   State<familyData> createState() => _familyDataState();
// }

// class _familyDataState extends State<familyData> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text('DOB: '),Text(widget.pro.DOB),
//             ],
//           ),
//           Row(
//             children: [
//               Text('Gender: '),Text(widget.pro.gender),
//             ],
//           ),
//           Row(
//             children: [
//               Text('Address: '),Text(widget.pro.address),
//             ],
//           ),
//           Row(
//             children: [
//               Text('Adhar Number: '),Text(widget.pro.adhar_number),
//             ],
//           ),
//           Row(
//             children: [
//               Text('Voter Id: '),Text(widget.pro.voter_id),
//             ],
//           ),
//           Row(
//             children: [
//               Text('Qualification: '),Text(widget.pro.qualification),
//             ],
//           ),
//
//         ],
//       ),
//     );
//   }
// }

// --------------------------------This is drop down card----------------------------------------

class profileCard extends StatefulWidget {
  FamilyDetails pro;

  profileCard({Key? key, required this.pro}) : super(key: key);

  @override
  _profileCardState createState() => _profileCardState();
}

class _profileCardState extends State<profileCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 290,

          // decoration: new BoxDecoration(
          //   border: new BorderDirectional(
          //     bottom: new BorderSide(
          //         color: Color.fromRGBO(112, 112, 112, 0.25),
          //         style: BorderStyle.solid
          //     ),
          //   ),
          // ),
          child: Column(
            children: <Widget>[
              GFAccordion(
                titleChild: Text(
                  widget.pro.name,
                  style: pStyleMain,
                ),
                contentChild:
                    //
                    Container(
                  margin: const EdgeInsets.fromLTRB(2, 4, 0, 0),
                  // padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 120,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'DOB: ',
                            style: pStyle1,
                          ),
                          Text(widget.pro.DOB, style: pStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Gender: ',
                            style: pStyle1,
                          ),
                          Text(widget.pro.gender, style: pStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Address: ', style: pStyle1),
                          Text(widget.pro.address, style: pStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Adhar Number: ', style: pStyle1),
                          Text(widget.pro.adhar_number, style: pStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Voter Id: ', style: pStyle1),
                          Text(widget.pro.voter_id, style: pStyle2),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Qualification: ', style: pStyle1),
                          Text(widget.pro.qualification, style: pStyle2),
                        ],
                      ),
                    ],
                  ),
                ),
                // collapsedIcon: Icon(Icons.add),
                // expandedIcon: Icon(Icons.minimize),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//------------------------------------------- This Card is for DashBoard--------------------------------------

class DsqaureCard extends StatelessWidget {
  String name;
  IconData icon;
  final VoidCallback onpressed;

  DsqaureCard(
      {required this.name, required this.icon, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        height: 125.0,
        width: double.infinity,
        color: Colors.transparent,
        child: TextButton(
          onPressed: onpressed,
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 182, 234, 218),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(icon, color: Colors.black),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            // padding: EdgeInsets.all(0.2),
                            backgroundColor: Color.fromARGB(
                                255, 255, 255, 255), // <-- Button color
                            foregroundColor:
                                Color(0xFFFEAD68), // <-- Splash color
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 10),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter-bold',
                        fontWeight: FontWeight.w800
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

//------------------------------------------- This Card is for Jansevak DashBoard--------------------------------------

class JansevakBCard extends StatelessWidget {
  String name1;
  String name2;
  IconData icon;
  final VoidCallback onpressed;

  JansevakBCard(
      {required this.name1,
      required this.name2,
      required this.icon,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
      height: 110.0,
      width: double.infinity,
      color: Colors.transparent,
      child: TextButton(
        onPressed: onpressed,
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0x124365cd)),
              // color:  Color(0x0c4365cd),
              borderRadius: BorderRadius.circular(10),

              gradient: LinearGradient(
                begin: Alignment(-1.469, 1.614),
                end: Alignment(1.592, -1.568),
                colors: <Color>[Color(0x004365cd), Color(0x2b4365cd)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x2b4365cd),
                            borderRadius: BorderRadius.circular(10),

                            // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.withOpacity(0.5),
                            //     spreadRadius: 0,
                            //     blurRadius: 4,
                            //     offset: Offset(0, 4), // changes position of shadow
                            //   ),
                            // ],
                          ),
                          height: 34,
                          width: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(icon, color: Colors.black),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            name1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Inter-bold',
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            name2,
                            style: TextStyle(
                              color: Color(0xFF4365CD),
                              fontSize: 13,
                              fontFamily: 'Inter-bold',
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Color(0xFF4365CD),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}

class JansevakYCard extends StatelessWidget {
  String name1;
  String name2;
  IconData icon;
  final VoidCallback onpressed;

  JansevakYCard(
      {required this.name1,
      required this.name2,
      required this.icon,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
      height: 110.0,
      width: double.infinity,
      color: Colors.transparent,
      child: TextButton(
        onPressed: onpressed,
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0x38ff953a)),
              // color:  Color(0x0c4365cd),
              borderRadius: BorderRadius.circular(10),

              gradient: LinearGradient(
                begin: Alignment(-1.469, 1.614),
                end: Alignment(1.592, -1.568),
                colors: <Color>[Color(0x00f1f1f1), Color(0x47ff953a)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x47ff953a),
                            borderRadius: BorderRadius.circular(10),

                            // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.withOpacity(0.5),
                            //     spreadRadius: 0,
                            //     blurRadius: 4,
                            //     offset: Offset(0, 4), // changes position of shadow
                            //   ),
                            // ],
                          ),
                          height: 34,
                          width: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(icon, color: Colors.black),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            name1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Inter-bold',
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            name2,
                            style: TextStyle(
                              color: Color(0xFFFF953A),
                              fontSize: 13,
                              fontFamily: 'Inter-bold',
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Color(0xFFFF953A),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}

//NEw jansevak card
