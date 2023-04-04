import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import '../function.dart';
import 'package:flutter/material.dart';

class Prediction extends StatefulWidget {
  const Prediction({super.key});

  @override
  State<Prediction> createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  TextEditingController X1Controller = TextEditingController();
  TextEditingController X2Controller = TextEditingController();
  TextEditingController X3Controller = TextEditingController();
  TextEditingController X4Controller = TextEditingController();
  TextEditingController X5Controller = TextEditingController();
  TextEditingController X6Controller = TextEditingController();
  TextEditingController X7Controller = TextEditingController();
  TextEditingController X8Controller = TextEditingController();
  TextEditingController X9Controller = TextEditingController();
  TextEditingController X10Controller = TextEditingController();
  TextEditingController X11Controller = TextEditingController();
  TextEditingController X12Controller = TextEditingController();
  TextEditingController X13Controller = TextEditingController();
  TextEditingController X14Controller = TextEditingController();
  TextEditingController X15Controller = TextEditingController();
  TextEditingController X16Controller = TextEditingController();
  TextEditingController X17Controller = TextEditingController();
  TextEditingController X18Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Fields'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: X1Controller,
              decoration: InputDecoration(
                labelText: 'Field 1',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X2Controller,
              decoration: InputDecoration(
                labelText: 'Field 2',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X3Controller,
              decoration: InputDecoration(
                labelText: 'Field 3',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X4Controller,
              decoration: InputDecoration(
                labelText: 'Field 4',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X5Controller,
              decoration: InputDecoration(
                labelText: 'Field 5',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X6Controller,
              decoration: InputDecoration(
                labelText: 'Field 6',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X7Controller,
              decoration: InputDecoration(
                labelText: 'Field 7',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X8Controller,
              decoration: InputDecoration(
                labelText: 'Field 8',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X9Controller,
              decoration: InputDecoration(
                labelText: 'Field 9',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X10Controller,
              decoration: InputDecoration(
                labelText: 'Field 10',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X11Controller,
              decoration: InputDecoration(
                labelText: 'Field 11',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X12Controller,
              decoration: InputDecoration(
                labelText: 'Field 12',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X13Controller,
              decoration: InputDecoration(
                labelText: 'Field 13',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X14Controller,
              decoration: InputDecoration(
                labelText: 'Field 14',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X15Controller,
              decoration: InputDecoration(
                labelText: 'Field 15',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X16Controller,
              decoration: InputDecoration(
                labelText: 'Field 16',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X17Controller,
              decoration: InputDecoration(
                labelText: 'Field 17',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: X18Controller,
              decoration: InputDecoration(
                labelText: 'Field 18',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () async {},
                child: Text(
                  'F  ',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }

  Future<void> submitData() async {
    final X1 = X1Controller.text;
    final X2 = X2Controller.text;
    final X3 = X3Controller.text;
    final X4 = X4Controller.text;
    final X5 = X5Controller.text;
    final X6 = X6Controller.text;
    final X7 = X7Controller.text;
    final X8 = X8Controller.text;
    final X9 = X9Controller.text;
    final X10 = X10Controller.text;
    final X11 = X11Controller.text;
    final X12 = X12Controller.text;
    final X13 = X13Controller.text;
    final X14 = X14Controller.text;
    final X15 = X15Controller.text;
    final X16 = X16Controller.text;
    final X17 = X17Controller.text;
    final X18 = X18Controller.text;
    final body = {
      "X1": X1,
      "X2": X2,
      "X3": X3,
      "X4": X4,
      "X5": X5,
      "X6": X6,
      "X7": X7,
      "X8": X8,
      "X9": X9,
      "X10": X10,
      "X11": X11,
      "X12": X12,
      "X13": X13,
      "X14": X14,
      "X15": X15,
      "X16": X16,
      "X17": X17,
      "X18": X18,
    };

    final url = 'http://127.0.0.1:5000/';
    final uri = Uri.parse(url);
    final response =  await http.post(uri, body:jsonEncode(body));
  }
}
