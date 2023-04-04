import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../function.dart';
import 'package:flutter/material.dart';

class Prediction extends StatefulWidget {
  const Prediction({super.key});

  @override
  State<Prediction> createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controllerX1 = TextEditingController();
  TextEditingController _controllerX2 = TextEditingController();
  TextEditingController _controllerX3 = TextEditingController();
  TextEditingController _controllerX4 = TextEditingController();
  TextEditingController _controllerX5 = TextEditingController();
  TextEditingController _controllerX6 = TextEditingController();
  TextEditingController _controllerX7 = TextEditingController();
  TextEditingController _controllerX8 = TextEditingController();
  TextEditingController _controllerX9 = TextEditingController();
  TextEditingController _controllerX10 = TextEditingController();
  TextEditingController _controllerX11 = TextEditingController();
  TextEditingController _controllerX12 = TextEditingController();
  TextEditingController _controllerX13 = TextEditingController();
  TextEditingController _controllerX14 = TextEditingController();
  TextEditingController _controllerX15 = TextEditingController();
  TextEditingController _controllerX16 = TextEditingController();
  TextEditingController _controllerX17 = TextEditingController();
  TextEditingController _controllerX18 = TextEditingController();

  String _predictionResult = '';

  Future<void> _submitForm() async {
    print("callig api");
    final response = await http.post(
        Uri.parse('https://8435-203-194-97-158.in.ngrok.io/prediction'),
        body: {
          'X1': _controllerX1.text,
          'X2': _controllerX2.text,
          'X3': _controllerX3.text,
          'X4': _controllerX4.text,
          'X5': _controllerX5.text,
          'X6': _controllerX6.text,
          'X7': _controllerX7.text,
          'X8': _controllerX8.text,
          'X9': _controllerX9.text,
          'X10': _controllerX10.text,
          'X11': _controllerX11.text,
          'X12': _controllerX12.text,
          'X13': _controllerX13.text,
          'X14': _controllerX14.text,
          'X15': _controllerX15.text,
          'X16': _controllerX16.text,
          'X17': _controllerX17.text,
          'X18': _controllerX18.text,
        });
    print('$response');
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print("apiii");
      setState(() {
        _predictionResult = data['prediction_text'];
      });
    } else {
      print("object");
      setState(() {
        _predictionResult = 'Failed to get prediction result.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Fields'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _controllerX1,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX2,
                  decoration: InputDecoration(
                    labelText: "X2",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X3 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX3,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX4,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX5,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX6,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX7,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX8,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX9,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX10,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX11,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX12,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX13,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX14,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX15,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX16,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX17,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerX18,
                  decoration: InputDecoration(
                    labelText: "X1",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter X1 value';
                    }
                    return null;
                  },
                ),
                TextButton(
                  onPressed: () async {
                    print("alinaenfwnfnwlnfe");
                    await _submitForm();
                  },
                  child: Text(
                    'F',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}
