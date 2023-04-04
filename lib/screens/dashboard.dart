import 'package:firebase_auth/firebase_auth.dart';
import 'package:prediction/screens/prediction.dart';
import 'package:prediction/screens/reset_password.dart';
import 'package:prediction/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:prediction/screens/splash.dart';
import 'package:prediction/screens/loginpage.dart';

class Dashboard extends StatelessWidget {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Colors.white,
          //   ),
          //   onPressed: () => Navigator.pop(context),
          // ),
          backgroundColor: Colors.purple.shade400,
          title: Text(
            'Dashboard',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                  0.0,
                  1.0
                ],
                    colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).accentColor.withOpacity(0.5),
                ])),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).accentColor,
                      ],
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.screen_lock_landscape_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Splash Screen',
                    style: TextStyle(
                        fontSize: 17, color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplashScreen(
                                  title: 'Company Bankruptcy',
                                )));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.login_rounded,
                      size: _drawerIconSize,
                      color: Theme.of(context).accentColor),
                  title: Text(
                    'Login Page',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(Icons.person_add_alt_1,
                      size: _drawerIconSize,
                      color: Theme.of(context).accentColor),
                  title: Text(
                    'Registration Page',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.password_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Forgot Password Page',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.verified_user_sharp,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Verification Page',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );
                  },
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: _drawerFontSize,
                        color: Theme.of(context).accentColor),
                  ),
                  onTap: () {
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
          ),
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
                  MaterialPageRoute(builder: (context) => PredictionPage());
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
