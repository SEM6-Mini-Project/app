import 'package:firebase_auth/firebase_auth.dart';
import 'package:prediction/reusable_widgets/reusable_widget.dart';
import 'package:prediction/screens/home.dart';
import 'package:prediction/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:prediction/screens/Registration.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

import 'package:firebase_database/firebase_database.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _ageTextController = TextEditingController();

  late DatabaseReference _dbref;
  // final databaseReference = FirebaseDatabase.instance.reference();
  @override
  void initState() {
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: hexStringToColor("9546C4")),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Company Name", Icons.person_outline,
                    false, _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email Id", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Company age", Icons.android_outlined,
                    false, _ageTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Sign Up", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    _createDB();
                    print("Created New Account");
                    print('email: ' +
                        _emailTextController.text +
                        "\n pass: " +
                        _passwordTextController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ))),
    );
  }

  _createDB() {
    _dbref.child('/userID').push().set({
      'email': _emailTextController.text,
      'password': _passwordTextController.text,
      'userName': _userNameTextController.text,
      'companyAge': _ageTextController.text
    });
  }
}
