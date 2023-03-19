import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/login/login_using_password.dart';
import 'package:login/login/verify_phone.dart';

class LoginPhone extends StatefulWidget {
  const LoginPhone({Key? key}) : super(key: key);

  @override
  State<LoginPhone> createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  TextEditingController passwordController = TextEditingController();
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      "Welcome to ",
                      style: mainTextStyle,
                    ),
                    Text(
                      "Samaj Sevak",
                      style: yellowText,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: const Text("Enter your Phone Number to get started",
                    style: TextStyle(
                      color: Color(0xFF1B1D22),
                    )),
              ),

              //image here
              Container(
                child: Image.asset('images/Main1.png'),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                child: const Text(
                  "Select your Role",
                  style: TextStyle(
                    color: Color.fromARGB(255, 187, 187, 189),
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
                            // color:
                            //     isSelected[0] ? Colors.orange : Colors.grey),
                              color: isSelected[0]
                                  ? Color.fromARGB(255, 48, 30, 103)
                                  : Color.fromARGB(255, 182, 234, 218)),
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
                              color: isSelected[1]
                                  ? Color.fromARGB(255, 48, 30, 103)
                                  : Color.fromARGB(255, 182, 234, 218)),
                        ),
                        child: const Text('JanSevak'),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(28, 20, 28, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                            prefixText: '+91   ',
                            prefixStyle:
                            TextStyle(color: Colors.black, fontSize: 13),
                            hintText: 'Enter your phone number',
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 13),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //send otp button
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return VerifyPhone();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

              //divider
              Container(
                margin: const EdgeInsets.only(top: 10),
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

              //login using password
              Center(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  width: double.infinity,
                  child: Button(
                    color: kButtonColor,
                    textdata: Text("Login using Password", style: btnStyle),
                    // onpressed: () {
                    //   // Perform action when button is pressed
                    //   setState(() => context.go('/login_password'),
                    //   // {
                    //   //     Navigator.of(context).push(
                    //   //       MaterialPageRoute(
                    //   //         builder: (BuildContext context) =>
                    //   //             PasswordLogin(controller: passwordController,),
                    //   //       ),
                    //   //     );
                    //   //   }

                    //     );
                    // },
                    // Added indirect Path Correct In update
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// class LoginPhone extends StatefulWidget {
//   const LoginPhone({super.key});
//
//   @override
//   State<LoginPhone> createState() => _LoginPhoneState();
// }
//
// class _LoginPhoneState extends State<LoginPhone> {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 40,
//             ),
//             const Header(
//               HeadText: 'Welcome to ',
//               HeadTextSuffix: 'JanSevak',
//               InfoText: 'Enter Your Phone Number to get started',
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             const Snaps(direc: 'images/register.png'),
//             const SizedBox(
//               height: 50,
//             ),
//             const forms(
//               hintText: 'Enter your Number',
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Button(
//               color: kButtonColor,
//               textdata: Text('Send OTP',style: btnStyle,),
//               onpressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => const VertifyPhone(),
//                     ),
//                   );
//               },
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Text('Or'),
//             const SizedBox(
//               height: 20,
//             ),
//             Button(
//               color: kButtonColor,
//               textdata:Text('Login using Password',style: btnStyle,) ,
//               onpressed: () {
//                 setState(() {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (BuildContext context) => const SetPassword(),
//                     ),
//                   );
//                 });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
