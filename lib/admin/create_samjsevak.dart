import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login/admin/success_samjsevak.dart';
import 'package:login/components/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/profile.dart';
import '../constants.dart';
import '../nagrik/dashboard.dart';


class CreateSamjsevak extends StatefulWidget {
  const CreateSamjsevak({super.key});

  @override
  State<CreateSamjsevak> createState() => _CreateSamjsevakState();
}

class _CreateSamjsevakState extends State<CreateSamjsevak> {
  final _auth = FirebaseAuth.instance;
  var _isLoading = false;
  final String role='samjsevak';
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              ProfileScreen()
          ),
        );

      } else {
        authResult = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password).then((value) => {postDetailsToFirestore(role)})
        ) as UserCredential;


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
                      "Create ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "SamajSevak Account",
                      style: yellowText,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: const Text("Enter Samajsevak Details to create account",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 49),
                child: Image.asset('images/Main1.jpg'),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(28, 39.0, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFF1F1F1)),
                ),

                //phone number
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Expanded(
                      child: Center(
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
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
                  border: Border.all(color: Color(0xFFF1F1F1)),
                ),


                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Expanded(
                      child: Center(
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
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
              SizedBox(height: 20,),
              if (_isLoading)
                Center(

                    child: CircularProgressIndicator())
              else
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
                      onpressed: () {
                        _submitAuthForm(
                            _emailController.text.trim(),
                            _passwordController.text.trim(),
                            false,
                            context
                        );

                      },
                    ),
                  ),

                ),
              SizedBox(height: 30),
              // Center(
              //   child: GestureDetector(
              //     onTap: () => setState(() {
              //       Navigator.of(context).push(
              //         MaterialPageRoute(
              //           builder: (BuildContext context) =>
              //               SuccessSamajsevak(),
              //         ),
              //       );
              //     }),
              //     child: const Text(
              //       'Already have account?',
              //       style: TextStyle(
              //           color: Color(0xFF4365CD),
              //           fontWeight: FontWeight.bold,
              //           fontSize: 13),
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }


  postDetailsToFirestore( role) {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var user = _auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('Nagrik');
    ref.doc(user!.uid).set({ 'role': role});
    print("hello");

  }


}