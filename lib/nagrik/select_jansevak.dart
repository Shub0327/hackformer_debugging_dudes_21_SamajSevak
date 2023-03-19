import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/home_screen.dart';

class SelectJansevak extends StatefulWidget {
  const SelectJansevak({Key? key}) : super(key: key);

  @override
  State<SelectJansevak> createState() => _SelectJansevakState();
}

class _SelectJansevakState extends State<SelectJansevak> {
  TextEditingController passwordController = TextEditingController();
  double rating = 0;
  List dropDownListData = [
    {"title": "JanSevak 1", "value": "1"},
    {"title": "JanSevak 2", "value": "2"},
    {"title": "JanSevak 3", "value": "3"},
    {"title": "JanSevak 4", "value": "4"},
  ];
  String defaultValue = "";
  String secondDropDown = "";

  @override
  Widget build(BuildContext context) {
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
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "Select Your ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "SamajSevak",
                      style: yellowText,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: const Text("Search using SamajSevak Name",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 39.0, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 182, 234, 218)),
                ),

                //phone number
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter SamajSevak Name',
                            hintStyle: hStyle,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      'Submit',
                      style: btnStyle,
                    ),
                    // onpressed: () {
                    //   setState(() {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (BuildContext context) => PasswordLogin(
                    //           controller: passwordController,
                    //         ),
                    //       ),
                    //     );
                    //   });
                    // },
                    // Add Routes
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const home(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 15),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or"),
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: const Text("Search Using SamajSevak ID",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 39.0, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 182, 234, 218)),
                ),

                //phone number
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter SamajSevak ID',
                            hintStyle: hStyle,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      'Submit',
                      style: btnStyle,
                    ),
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const home(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
