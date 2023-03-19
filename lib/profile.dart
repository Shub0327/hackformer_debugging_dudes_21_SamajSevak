import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();

  var _isLoading = false;
  var _Name = '';
  var _address = '';
  var _phone = '' ;
  var _adhar  ='';

  void _submitForm() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();

    try {
      setState(() {
        _isLoading = true;
      });

      final user = _auth.currentUser;
      await FirebaseFirestore.instance
          .collection('Nagrik')
          .doc(user!.uid)
          .set({'address': _address ,'adhar': _adhar,'name': _Name,'phone': _phone});


      setState(() {
        _isLoading = false;
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
            ProfileScreen()
        ),
      );
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
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      initialValue: _Name,
                      decoration: InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a username.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _Name = value!;
                      },
                    ),
                    TextFormField(
                      initialValue: _address,
                      decoration: InputDecoration(labelText: 'Username'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _address = value!;
                      },
                    ),
                    TextFormField(
                      initialValue: _phone,
                      decoration: InputDecoration(labelText: ''),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Phone.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _phone = value!;
                      },
                    ),
                    TextFormField(
                      initialValue: _adhar,
                      decoration: InputDecoration(labelText: 'Adhar'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your adhar.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _adhar = value!;
                      },
                    ),
                    SizedBox(height: 12),
                    if (_isLoading)
                      CircularProgressIndicator()
                    else
                      TextButton(
                        child: Text('Save'),
                        onPressed: _submitForm,
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
