import 'package:flutter/material.dart';
import 'package:login/components/card.dart';
import 'package:login/constants.dart';

class ViewComplaintJ extends StatefulWidget {
  const ViewComplaintJ({super.key});

  @override
  State<ViewComplaintJ> createState() => _ViewComplaintJState();
}

class _ViewComplaintJState extends State<ViewComplaintJ> {
  List<ComplaintCardDetails> complaints = [
    ComplaintCardDetails(
        id: '#123456',
        category: 'Help',
        subject: 'help!',
        date: '1969-07-20 20:18:04Z',
        status: 'open'),
    ComplaintCardDetails(
        id: '#1236',
        category: 'Help',
        subject: 'help!',
        date: '1969-07-20 20:18:04Z',
        status: 'closed'),
  ];

  String defaultValue = "";
  String secondDropDown = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "My ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Complaints",
                      style: yellowText,
                    ),
                  ],
                ),

              ],
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: complaints
                  .map((complaint) => ComplaintCard(complaint: complaint))
                  .toList()),
        ],
      ),
    );
  }
}
