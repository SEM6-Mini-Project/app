import 'package:firebase_core/firebase_core.dart';
import 'package:prediction/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB2pR40icU76TNgB0k1_qphNZIK4M7vu3M",
          authDomain: "bankruptcy-prediction-f1817.firebaseapp.com",
          databaseURL:
              "https://bankruptcy-prediction-f1817-default-rtdb.firebaseio.com",
          projectId: "bankruptcy-prediction-f1817",
          storageBucket: "bankruptcy-prediction-f1817.appspot.com",
          messagingSenderId: "207241405329",
          appId: "1:207241405329:web:07f0d178a3bdc2748ef030",
          measurementId: "G-Z9K70N1TPW"),
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInScreen(),
    );
  }
}
