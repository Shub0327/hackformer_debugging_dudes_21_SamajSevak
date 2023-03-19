import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/login/reset_pass_success.dart';

import '../components/button.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Row(
                  children: const [
                    Text(
                      "Update ",
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
                child: const Text("Enter your new Password",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),

              //image here
              Container(
                child: Image.asset('images/Main1.png'),
              ),

              //password
              Container(
                margin: const EdgeInsets.fromLTRB(28, 20, 28, 0),
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: TextField(
                          controller: widget.controller,
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            hintText: 'Enter new password',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 13),
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                child: obscureText
                                    ? const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                )
                                    : const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //confirm password
              Container(
                margin: const EdgeInsets.fromLTRB(28, 20, 28, 0),
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm new password',
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 13),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // update password button
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Update Password",
                      style: btnStyle,
                    ),
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SuccessReset();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return Scaffold(
    //     appBar: PreferredSize(
    //       preferredSize: Size.fromHeight(30),
    //       child: AppBar(
    //         leading: BackButton(color: Colors.black),
    //         elevation: 0,
    //         backgroundColor: Color.fromARGB(0, 255, 255, 255),
    //       ),
    //     ),
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           const Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 30),
    //             child: Header(
    //               HeadText: 'Update ',
    //               HeadTextSuffix: 'Password',
    //               InfoText: 'Enter yout password to verify',
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 40,
    //           ),
    //           const Snaps(direc: 'images/register.png'),
    //           const SizedBox(
    //             height: 50,
    //           ),
    //           const forms(hintText: 'Enter Password'),
    //           const SizedBox(
    //             height: 5,
    //           ),
    //           const forms(hintText: 'Confirm Password'),
    //           const SizedBox(
    //             height: 50,
    //           ),
    //           Button(
    //             color: kButtonColor,
    //               textdata:Text('Submit',style: btnStyle,) ,
    //               onpressed: () {
    //                 setState(() {
    //                   Navigator.of(context).push(
    //                     MaterialPageRoute(
    //                       builder: (BuildContext context) =>
    //                           const SuccessReset(),
    //                     ),
    //                   );
    //                 });
    //               })
    //         ],
    //       ),
    //     ));
  }
}
