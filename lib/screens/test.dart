import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Predict extends StatelessWidget {
  const Predict({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String X1 = ""; //user's response will be assigned to this variable
  String final_response = ""; //will be displayed on
  //function to validate and save user form

  //function to add border and rounded edges to our form
  OutlineInputBorder _inputformdeco() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide:
          BorderSide(width: 1.0, color: Colors.blue, style: BorderStyle.solid),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Container(
              width: 350,
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your X1: ',
                    enabledBorder: _inputformdeco(),
                    focusedBorder: _inputformdeco(),
                  ),
                  onSaved: (value) {
                    X1 = value
                        .toString(); //getting data from the user form and assigning it to X1
                  },
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                //validating the form and saving it

                //url to send the post request to
                var url = Uri.parse("http://127.0.0.1:5000/");

                //sending a post request to the url
                final response =
                    await http.post(url, body: json.encode({'X1': X1}));
              },
              child: Text('SEND'),
            ),

            ElevatedButton(
              onPressed: () async {
                //url to send the get request to
                var url = Uri.parse("http://127.0.0.1:5000/prediction");
                //getting data from the python server script and assigning it to response
                final response = await http.get(url);

                //converting the fetched data from json to key value pair that can be displayed on the screen
                final decoded = json.decode(response.body).toString()
                    as Map<String, dynamic>;

                //changing the UI be reassigning the fetched data to final response
                setState(() {
                  final_response = decoded['result'];
                });
              },
              child: Text('GET'),
            ),

            //displays the data on the screen
            Text(
              final_response,
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
