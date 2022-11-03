import 'package:flutter/material.dart';
import './login_signup/login.dart';

class ChalaanApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'e_chalaan',
      home: Scaffold(
        body: LoginPage(),
        appBar: AppBar(
          title: Text(
            'Welcome to E_Chalaan',
            textAlign: TextAlign.center,
          ),

          backgroundColor: Color.fromARGB(255, 143, 32, 24),
          elevation: 10.0,
          // shape: ShapeBorder,
        ),
      ),
    );
  }
}
