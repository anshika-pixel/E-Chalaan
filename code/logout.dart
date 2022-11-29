import 'package:e_chalaan/src/homepage/homepage.dart';
import 'package:e_chalaan/src/login_signup/login.dart';
import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

class Logoutdialog extends StatelessWidget {
  const Logoutdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text('AlertDialog Title'),
      content: const Text('Do you want to logout?'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
