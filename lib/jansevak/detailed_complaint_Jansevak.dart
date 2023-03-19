import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/jansevak/update_status.dart';

import '../components/header.dart';

class DetailComplaintJ extends StatefulWidget {
  const DetailComplaintJ({super.key});

  @override
  State<DetailComplaintJ> createState() => _DetailComplaintJState();
}

class _DetailComplaintJState extends State<DetailComplaintJ> {
  @override
  Widget build(BuildContext context) {
    const String subject = "Subject of Complaint";
    const int ID = 1234;
    const String category = "Environmental Concern";
    const String description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a ";
    return Scaffold(
      backgroundColor: Colors.white,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(
                HeadText: "Detailed ",
                HeadTextSuffix: "Complaint",
                InfoText: ""),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      readOnly: true,
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "$subject", border: InputBorder.none),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Complaint ID :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                            child: Center(
                              child: TextField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: '$ID',
                                  hintStyle: hStyle,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Category :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                            child: Center(
                              child: TextField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: '$category',
                                  hintStyle: hStyle,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                            child: Center(
                              child: TextField(
                                readOnly: true,
                                maxLines: 8,
                                decoration: InputDecoration(
                                  hintText: '$description',
                                  hintStyle: hStyle,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Documents Uploaded :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                            child: Center(
                              child: TextField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: 'Documents.pdf',
                                  hintStyle: hStyle,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Created On :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Expanded(
                            child: Center(
                              child: TextField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  hintText: '14/06/2022',
                                  hintStyle: hStyle,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
