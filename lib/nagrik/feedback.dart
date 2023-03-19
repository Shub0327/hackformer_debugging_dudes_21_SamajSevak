import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/login/login_using_password.dart';
import '../components/button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  TextEditingController passwordController = TextEditingController();
  double rating = 0;
  List dropDownListData = [
    {"title": "Excellent", "value": "1"},
    {"title": "Very Good", "value": "2"},
    {"title": "Good", "value": "3"},
    {"title": "Poor", "value": "4"},
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
                      "Nagrik ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Feedback",
                      style: yellowText,
                    )
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              //   child: const Text("Enter your Password to verify",
              //       style: TextStyle(
              //         color: Color(0xFF1B1D22),
              //       )),
              // ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                margin: const EdgeInsetsDirectional.all(30),
                child: Image.asset('images/fb.jpg'),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: InputDecorator(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      hintStyle: hStyle,
                      fillColor: Color.fromRGBO(246, 242, 242, 1)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        isDense: true,
                        value: defaultValue,
                        isExpanded: true,
                        menuMaxHeight: 350,
                        borderRadius: BorderRadius.circular(10),
                        items: [
                          const DropdownMenuItem(
                              value: "",
                              child: Text(
                                " - Select - ",
                                style: hStyle,
                              )),
                          ...dropDownListData
                              .map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']),
                                value: data['value']);
                          }).toList(),
                        ],
                        onChanged: (value) {
                          print("selected Value $value");
                          setState(() {
                            defaultValue = value!;
                          });
                        }),
                  ),
                ),
              ),

              Center(
                child: RatingBar.builder(
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemSize: 50.0,
                  glow: true,
                  // allowHalfRating: true,
                  updateOnDrag: true,

                  glowRadius: 1,
                  glowColor: Colors.amber,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  onRatingUpdate: (rating) => setState(() {
                    this.rating = rating;
                  }),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 39.0, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFF1F1F1)),
                    color: Color.fromRGBO(246, 242, 242, 1)),

                //phone number
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Subject',
                            hintStyle: hStyle,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 23.0, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                width: double.infinity,
                height: 160,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFF1F1F1)),
                    color: Color.fromRGBO(246, 242, 242, 1)),

                //phone number
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Comments',
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
                              builder: (BuildContext context) => PasswordLogin(
                                controller: passwordController,
                              ),
                            ),
                          );
                        });
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
