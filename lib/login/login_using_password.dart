import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:go_router/go_router.dart';
import 'package:login/components/button.dart';
import 'package:login/components/form.dart';
import 'package:login/components/snap.dart';
import 'package:login/jansevak/jansevak_dashboard.dart';
import 'package:login/jansevak/jansevak_home.dart';
import 'package:login/login/upcoming_pages.dart';
import 'package:login/nagrik/dashboard.dart';
import 'package:login/nagrik/setup_profile.dart';
import 'package:login/login/update_password.dart';
import 'package:login/login/login_using_phone.dart';
import 'package:login/login/reset_password.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/track_complaint.dart';
import 'package:login/nagrik/view_complaint.dart';

import '../nagrik/home_screen.dart';
import '../profile.dart';

class PasswordLogin extends StatefulWidget {
  const PasswordLogin({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordLogin> createState() => _PasswordLoginState();
}

class _PasswordLoginState extends State<PasswordLogin> {
  final _auth = FirebaseAuth.instance;
  var _isLoading = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  void _submitAuthForm(
      String email, String password, bool isLogin, BuildContext ctx) async {
    UserCredential authResult;
    try {
      setState(() {

        _isLoading = true;
      });
      if (isLogin) {
        final authResult = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) =>
        //       SetupProfile()
        //   ),
        // );
        route();

      } else {
        authResult = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
      }
    } on FirebaseAuthException catch (error) {
      String? errorMessage = 'Authentication failed';
      if (error.message != null) {
        errorMessage = error.message;
      }
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text(errorMessage!),
          backgroundColor: Theme.of(context).errorColor,
        ),
      );
      setState(() {
        _isLoading = false;

      });
    } catch (error) {
      print(error);
      setState(() {
        _isLoading = false;
      });
    }
  }



  List<bool> isSelected = [true, false];
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
                      "Login Using ",
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
                child: const Text("Enter your Password to Login",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),

              //image here
              Container(
                child: Image.asset('images/Main1.png'
                    ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                child: const Text(
                  "Select your Role",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = !isSelected[i];
                            }
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(150, 42),
                          textStyle: TextStyle(fontSize: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          foregroundColor:
                              isSelected[0] ? Colors.black : Colors.grey,
                          side: BorderSide(
                              color:
                                  isSelected[0] ? Colors.orange : Colors.grey),
                        ),
                        child: const Text('Nagrik'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = !isSelected[i];
                            }
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(150, 42),
                          textStyle: TextStyle(fontSize: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          foregroundColor:
                              isSelected[1] ? Colors.black : Colors.grey,
                          side: BorderSide(
                              color:
                                  isSelected[1] ? Colors.orange : Colors.grey),
                        ),
                        child: const Text('JanSevak'),
                      ),
                    ),
                  ],
                ),
              ),

              //phone number
              Container(
                margin: const EdgeInsets.fromLTRB(28, 20, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //password
              Container(
                margin: const EdgeInsets.fromLTRB(28, 20, 28, 0),
                //padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                          controller: _passwordController,
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            prefixIcon: const Align(
                              widthFactor: 0.5,
                              heightFactor: 0.5,
                              child: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                            ),
                            prefixStyle: const TextStyle(
                                color: Colors.black, fontSize: 13),
                            hintText: 'Enter your password',
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
              SizedBox(height: 20,),
              if (_isLoading)
                Center(child: CircularProgressIndicator())
              else
              //login button
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text(
                      "Login",
                      style: btnStyle,
                    ),
                    onpressed: () {
    _submitAuthForm(
    _emailController.text.trim(),
    _passwordController.text.trim(),
    true,
    context);
                      }

                      // Route to respective Nagrik/Jansevak Dashboard on successful login

                  ),
                ),
              ),

              const SizedBox(
                height: 15.0,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ResetPassword(),
                      ),
                    );
                  }),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color(0xFF4365CD),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),

              //divider
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
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

              //login using OTP
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text("Login using OTP", style: btnStyle),
                    onpressed: () {
                      // Perform action when button is pressed
                      setState(
                        () => context.go('/login_OTP'),
                        // {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) => LoginPhone(),
                        //   ),
                        // );
                        // }
                      );
                    },
                  ),
                ),
              ),
              // Button added for Testing purpose only delete after use
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text("Under development Page", style: btnStyle),
                    onpressed: () {
                      // Perform action when button is pressed
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => UpComing(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
  void route() {
    User? user = FirebaseAuth.instance.currentUser;
    var kk = FirebaseFirestore.instance
        .collection('Nagrik')
        .doc(user!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('role') == "samjsevak") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  JansevakHome(),
            ),
          );
        }else{
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  home(),
            ),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  SetupProfile(),
          ),
        );
      }
    }
    );
  }
}
