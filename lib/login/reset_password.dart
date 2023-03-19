import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/login/verify_phone.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        "Reset ",
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
                  child: const Text(
                    "Enter your Phone Number to reset password",
                    style: TextStyle(color: Color(0xFF1B1D22)),
                  ),
                ),

                // Image here
                Container(
                  child: Image.asset('images/Main1.png'),
                ),

                // Phone Number
                Container(
                  margin: EdgeInsets.fromLTRB(28, 20, 28, 0),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(255, 182, 234, 218)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Expanded(
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixText: '+91   ',
                                prefixStyle:
                                TextStyle(color: Colors.black, fontSize: 13),
                                hintText: 'Enter your phone number',
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ))
                    ],
                  ),
                ),

                //Send Otp
                Center(
                  child: Container(
                    height: 42,
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                    width: double.infinity,
                    child: Button(
                      color: kButtonColor,
                      textdata: Text(
                        "Send OTP",
                        style: btnStyle,
                      ),
                      onpressed: () {
                        setState(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => VerifyPhone(),
                            ),
                          );
                        });
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
