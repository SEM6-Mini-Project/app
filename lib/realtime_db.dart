import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class realtime_db extends StatefulWidget {
  const realtime_db({super.key});

  @override
  State<realtime_db> createState() => _realtime_dbState();
}

class _realtime_dbState extends State<realtime_db> {
  late DatabaseReference _dbref;
  String databasejson = "";
  @override
  void initState() {
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELLO"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('database - ' + databasejson),
          ),
          TextButton(
              onPressed: () {
                _createDB();
              },
              child: const Text(
                "Create DB",
                style: TextStyle(color: Colors.black),
              )),
          TextButton(
              onPressed: () {
                _readDB();
              },
              child: const Text(
                "Read DB",
                style: TextStyle(color: Colors.black),
              )),
        ],
      )),
    );
  }

  _createDB() {
    _dbref.child("profile").set("My profile");
    _dbref.child("JobProfile").set("websites");
  }
  _readDB() {
    _dbref.once().then((DatabaseEvent dataSnapshot) {
      print("read once - "+ dataSnapshot.snapshot.value.toString());
      setState(() {
        databasejson = dataSnapshot.snapshot.value.toString();
      });
    });
  }
}


