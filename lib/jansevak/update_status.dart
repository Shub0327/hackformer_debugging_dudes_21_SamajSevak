import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/components/header.dart';
import 'package:login/constants.dart';

class UpdateStatus extends StatefulWidget {
  const UpdateStatus({super.key});

  @override
  State<UpdateStatus> createState() => _UpdateStatusState();
}

class _UpdateStatusState extends State<UpdateStatus> {
  int radioValue = -1;
  var index = 0;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      radioValue = value!;
      Navigator.of(context).pop(context);
      print(radioValue);
    });
    index = radioValue;
  }

  @override
  Widget build(BuildContext context) {
    List<String> category = [
      'Complaint Accepted',
      'Complaint Under Process',
      'Complaint Taking Long Time',
      'Complaint Resolved / UnResolved'
    ];

    final maxlines = 10;
    const int complaintID = 123456;
    const String complaintStatus = 'Complaint Status';
    const String remark = "Add Remarks";
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
                  HeadText: 'Update ',
                  HeadTextSuffix: 'Complaint Status',
                  InfoText: 'Add Comments And update status'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Complaint Id",
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
                          hintText: "$complaintID",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Complaint Status *",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 7, 15, 0),
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                          Text(
                            "Complaint Status",
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 6, 5, 6),
                            padding: EdgeInsets.all(5),
                            child: TextButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: const StadiumBorder(
                                    side: BorderSide(color: Colors.orange),
                                  )),
                              child: const Text(
                                'Select',
                                style:
                                TextStyle(color: Colors.orange, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Remarks *",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 7, 0),
                      height: maxlines * 24,
                      child: TextField(
                        maxLines: maxlines,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xFF1B1D22),
                        ),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: remark,
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
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Submit",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => ListView(
                            children: [
                              Container(
                                //height: 800,
                                child: Column(
                                  //mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          17, 30, 0, 17),
                                      child: Row(
                                        children: const [
                                          Text(
                                            "Select ",
                                            style: mainTextStyle,
                                          ),
                                          Text(
                                            "Status",
                                            style: yellowText,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          for (var i = 0;
                                          i < category.length;
                                          i++)
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  17, 13, 17, 10),
                                              width: double.infinity,
                                              height: 63,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    32, 255, 153, 0),
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.orange),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  const Padding(
                                                      padding:
                                                      EdgeInsets.fromLTRB(
                                                          10, 0, 10, 0)),
                                                  Text(
                                                    category[i],
                                                    style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 102, 102, 102),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(0, 0, 20, 0),
                                                    child: Radio<int>(
                                                        activeColor:
                                                        Colors.orange,
                                                        value: i,
                                                        groupValue: radioValue,
                                                        onChanged:
                                                        _handleRadioValueChanged),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ));
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
