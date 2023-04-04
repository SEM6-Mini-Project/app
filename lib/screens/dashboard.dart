import 'package:firebase_auth/firebase_auth.dart';
import 'package:prediction/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.black,
          title: Text(
            'Dashboard',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        // body: Center(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'LABEL',
            style: TextStyle(
              color: Color.fromARGB(255, 236, 234, 231),
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Code for Predict button action
                },
                child: Text('Predict'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(fontSize: 34),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Code for Back button action
                },
                child: Text('Profile'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.orange,
                  textStyle: TextStyle(fontSize: 34),
                ),
              ),
            ],
          ),
        ])));
  }
}
