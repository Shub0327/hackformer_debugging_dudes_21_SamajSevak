import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login/components/button.dart';
import 'package:login/components/snap.dart';
import 'package:login/constants.dart';
import 'package:login/login/set_password.dart';

import '../nagrik/faq.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({super.key});

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "Verify your ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Phone Number",
                      style: yellowText,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: const Text(
                  "Please enter the OTP sent to +91 8355892633",
                  style: TextStyle(color: Color(0xFF1B1D22)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Image.asset('images/Main1.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: OtpTextField(
                  numberOfFields: 5,
                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {}, // end onSubmit
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Verify OTP",
                      style: btnStyle,
                    ),
                    // onpressed: ()
                    // {
                    //   setState(() => context.go('/set_password'),
                    //   // {
                    //   //
                    //   //
                    //   // }

                    //   );
                    //   // Navigator.push(
                    //   //   context,
                    //   //   MaterialPageRoute(
                    //   //     builder: (context) {
                    //   //       return SetPassword();
                    //   //     },
                    //   //   ),
                    //   // );
                    // },
                    //use route after demo
                    onpressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SetPassword(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: const [
                    Text(
                      'Resend Code in',
                      style: TextStyle(
                        color: Color.fromARGB(255, 153, 153, 153),
                      ),
                    ),
                    Text('00:57')
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Having trouble signing in ?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 91, 143, 185), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
