import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prediction/realtime_db.dart';
import 'package:prediction/LoginPage.dart';


Future<void> main() async {
  // await Firebase.initializeApp();
  // FirebaseAuth.instance.setSettings(
  //   appVerificationDisabledForTesting: true,
  // );
  // var LogLevel;
  // FirebaseAuth.instance.setLogLevel(LogLevel.verbose);
  // WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp myapp = await Firebase.initializeApp(
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
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
