import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prediction/screens/prediction.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prediction/screens/sign_in_screen.dart';
import 'package:prediction/screens/dashboard.dart';
import 'package:prediction/screens/sign_up_screen.dart';

Future<void> main() async {
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
    home: LoginUiApp(),
  ));
}

class LoginUiApp extends StatelessWidget {
  final Color _primaryColor = HexColor('#DC54FE');
  final Color _accentColor = HexColor('#8A02AE');

  // Design color
  // Color _primaryColor= HexColor('#FFC867');
  // Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SignInScreen(),
    );
  }
}
