import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/profile.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            ProfileScreen()
        ),
      );

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email address'),
                      controller: _emailController,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password'),
                      controller: _passwordController,
                    ),
                    SizedBox(height: 12),
                    if (_isLoading)
                      Center(child: CircularProgressIndicator())
                    else
                      TextButton(
                        child: Text('Login'),
                        onPressed: () {
                          _submitAuthForm(
                              _emailController.text.trim(),
                              _passwordController.text.trim(),
                              true,
                              context);


                        },
                      ),
                    SizedBox(height: 8),
                    if (!_isLoading)
                      TextButton(
                        child: Text('Sign up'),
                        onPressed: () {
                          _submitAuthForm(
                              _emailController.text.trim(),
                              _passwordController.text.trim(),
                              false,
                              context
                          );

                        },

                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
