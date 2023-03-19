import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/login/login_using_password.dart';

import '../components/button.dart';

class SuccessReset extends StatefulWidget {
  const SuccessReset({super.key});

  @override
  State<SuccessReset> createState() => _SuccessResetState();
}

class _SuccessResetState extends State<SuccessReset> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Password ',
                        style: mainTextStyle,
                      ),
                      Text(
                        'Updated',
                        style: yellowText,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child:
                  const Text("Your Password has been Updated Successfully",
                      style: TextStyle(
                        color: Color(0xFF1B1D22),
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  child: Image.asset('images/verify.png'),
                ),
                Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text("Back to Home", style: btnStyle),
                    onpressed: () {
                      // Perform action when button is pressed
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PasswordLogin(controller: passwordController),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: SafeArea(
    //       child: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Container(
    //         margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
    //         child: Row(
    //           children: const [
    //             Text(
    //               "Password ",
    //               style: mainTextStyle,
    //             ),
    //             Text(
    //               "Updated",
    //               style: yellowText,
    //             )
    //           ],
    //         ),
    //       ),
    //       Container(
    //         margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
    //         child: const Text("Your Password has been updated successfully",
    //             style: TextStyle(
    //               color: Color(0xFF1B1D22),
    //             )),
    //       ),
    //       Container(
    //         margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
    //         child: Image.asset('images/verify.png'),
    //       ),

    // Container(
    //   height: 42,
    //   margin: const EdgeInsets.only(top: 10),
    //   padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
    //   width: double.infinity,
    //   child: Button(
    //     color: kButtonColor,
    //     textdata: Text("Back to Home", style: btnStyle),
    //     onpressed: () {
    //       // Perform action when button is pressed
    //       setState(() {
    //         Navigator.of(context).push(
    //           MaterialPageRoute(
    //             builder: (BuildContext context) =>
    //                 PasswordLogin(controller: passwordController),
    //           ),
    //         );
    //       });
    //     },
    //   ),
    //  ),
    //     ],
    //   ),
    //     ),
    // ));
  }
}
