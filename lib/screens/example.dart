import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prediction Page"),
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "X1"),
          ),
           TextField(
            decoration: InputDecoration(hintText: "X2"),
          ), TextField(
            decoration: InputDecoration(hintText: "X3"),
          ), TextField(
            decoration: InputDecoration(hintText: "X4"),
          ), TextField(
            decoration: InputDecoration(hintText: "X5"),
          ), TextField(
            decoration: InputDecoration(hintText: "X6"),
          ), TextField(
            decoration: InputDecoration(hintText: "X7"),
          ), TextField(
            decoration: InputDecoration(hintText: "X8"),
          ), TextField(
            decoration: InputDecoration(hintText: "X9"),
          ), TextField(
            decoration: InputDecoration(hintText: "X10"),
          ), TextField(
            decoration: InputDecoration(hintText: "X11"),
          ), TextField(
            decoration: InputDecoration(hintText: "X12"),
          ), TextField(
            decoration: InputDecoration(hintText: "X1"),
          ), TextField(
            decoration: InputDecoration(hintText: "X1"),
          ),
        ],
      ));
    
  }
}
