import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PredictionPageState createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  final TextEditingController _input1Controller = TextEditingController();
  final TextEditingController _input2Controller = TextEditingController();
  final TextEditingController _input3Controller = TextEditingController();
  final TextEditingController _input4Controller = TextEditingController();
  final TextEditingController _input5Controller = TextEditingController();
  final TextEditingController _input6Controller = TextEditingController();
  final TextEditingController _input7Controller = TextEditingController();
  final TextEditingController _input8Controller = TextEditingController();
  final TextEditingController _input9Controller = TextEditingController();
  final TextEditingController _input10Controller = TextEditingController();
  final TextEditingController _input11Controller = TextEditingController();
  final TextEditingController _input12Controller = TextEditingController();
  final TextEditingController _input13Controller = TextEditingController();
  final TextEditingController _input14Controller = TextEditingController();
  final TextEditingController _input15Controller = TextEditingController();
  final TextEditingController _input16Controller = TextEditingController();
  final TextEditingController _input17Controller = TextEditingController();
  final TextEditingController _input18Controller = TextEditingController();
  late String _prediction = '';

  OutlineInputBorder _inputformdeco() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(
          width: 1.0, color: Colors.blue, style: BorderStyle.solid),
    );
  }

  Future<void> _getPrediction() async {
    const apiUrl = 'http://10.0.2.2:5000/predict';
    final inputMap = {
      'input_1': _input1Controller.text,
      'input_2': _input2Controller.text,
      'input_3': _input3Controller.text,
      'input_4': _input4Controller.text,
      'input_5': _input5Controller.text,
      'input_6': _input6Controller.text,
      'input_7': _input7Controller.text,
      'input_8': _input8Controller.text,
      'input_9': _input9Controller.text,
      'input_10': _input10Controller.text,
      'input_11': _input10Controller.text,
      'input_12': _input10Controller.text,
      'input_13': _input10Controller.text,
      'input_14': _input10Controller.text,
      'input_15': _input10Controller.text,
      'input_16': _input10Controller.text,
      'input_17': _input10Controller.text,
      'input_18': _input10Controller.text,
    };
    final response = await http.post(Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(inputMap));

    if (response.statusCode == 200) {
      final prediction = jsonDecode(response.body)['prediction'];
      setState(() {
        _prediction = prediction;
      });
    } else {
      throw Exception('Failed to get prediction');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prediction'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 5),
              TextField(
                controller: _input1Controller,
                decoration: InputDecoration(
                  labelText: 'Operating Gross Margin',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input2Controller,
                decoration: InputDecoration(
                  labelText: 'Realized Sales Gross Margin',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input3Controller,
                decoration: InputDecoration(
                  labelText: 'Operating Profit Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input4Controller,
                decoration: InputDecoration(
                  labelText: 'Pre-tax net Interest Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input5Controller,
                decoration: InputDecoration(
                  labelText: 'After-tax net Interest Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input6Controller,
                decoration: InputDecoration(
                  labelText: 'Continuous interest rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input7Controller,
                decoration: InputDecoration(
                  labelText: 'Operating Expense Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input8Controller,
                decoration: InputDecoration(
                  labelText: 'Cash flow rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input9Controller,
                decoration: InputDecoration(
                  labelText: 'Tax rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input10Controller,
                decoration: InputDecoration(
                  labelText: 'Net Value Per Share',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input11Controller,
                decoration: InputDecoration(
                  labelText: 'Cash Flow Per Share',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input12Controller,
                decoration: InputDecoration(
                  labelText: 'Revenue Per Share',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input13Controller,
                decoration: InputDecoration(
                  labelText: 'Operating Profit Per Share',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input14Controller,
                decoration: InputDecoration(
                  labelText: 'Operating Profit Growth Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input15Controller,
                decoration: InputDecoration(
                  labelText: 'After-tax Net Profit Growth Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input16Controller,
                decoration: InputDecoration(
                  labelText: 'Regular Net Profit Growth Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input17Controller,
                decoration: InputDecoration(
                  labelText: 'Continuous Net Profit Growth Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _input18Controller,
                decoration: InputDecoration(
                  labelText: 'Total Asset Growth Rate',
                  enabledBorder: _inputformdeco(),
                  focusedBorder: _inputformdeco(),
                ),
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _getPrediction,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  'Get Prediction',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 16),
              // ignore: unnecessary_null_comparison
              _prediction != null
                  ? Text(
                      'Prediction: $_prediction',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
