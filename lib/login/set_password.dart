import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/login/login_using_password.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 55, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "Set ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Password",
                      style: yellowText,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: const Text("Enter your Password to verify",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 49),
                child: Image.asset('images/Main1.png'),
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
                            hintText: 'Enter Password',
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
                            hintText: 'Confirm Password',
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
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      'Submit',
                      style: btnStyle,
                    ),
                    // onpressed: () {
                    //   setState(()=> context.go('/login_phone'),
                    //   // {
                    //   //   Navigator.of(context).push(
                    //   //     MaterialPageRoute(
                    //   //       builder: (BuildContext context) =>
                    //   //           PasswordLogin(controller: passwordController,),
                    //   //     ),
                    //   //   );
                    //   // }

                    //   );
                    // },
                    // Added Indirect path use routing after demo
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
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
