import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:prediction/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final SignInScreen sign_in_screen = SignInScreen();
  // final value = sign_in_screen._emailTextController.toString();

  late DatabaseReference _dbref;
  String databasejson = "";
  // final databaseReference = FirebaseDatabase.instance.reference();
  @override
  void initState() {
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();
  }

  @override
  Widget build(BuildContext context) {
    // _dbref.child('/userID/$userId').once().then((DataSnapshot snapshot) {
    //    Map<dynamic, dynamic> values = snapshot.value;
    //    // Handle the data here
    //  });

    // _dbref.once().then((DatabaseEvent dataSnapshot) {
    //   //print("read once - "+ dataSnapshot.snapshot.value.toString());
    //   setState(() {
    //     databasejson = dataSnapshot.snapshot.value.toString();
    //   });
    // });

    // _dbref.child('users').once().then((DatabaseEvent dataSnapshot) {
    //   Map<dynamic, dynamic>? values = dataSnapshot.snapshot.value as Map?;
    //   values!.forEach((key, value) {
    //     print(key); // Prints the userID of each user
    //     databasejson = dataSnapshot.snapshot.value.toString();
    //   });
    // });

    _readDB();

    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('database - ' + databasejson),
        ),
        TextButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              });
            },
            child: const Text(
              "Logout",
              style: TextStyle(color: Colors.black),
            )),
      ]),
    ));
  }

  _readDB() {
    _dbref.once().then((DatabaseEvent dataSnapshot) {
      print("read once - " + dataSnapshot.snapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.snapshot.value.toString();
      });
    });
  }
}
