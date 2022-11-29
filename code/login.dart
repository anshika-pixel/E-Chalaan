import 'package:flutter/material.dart';
import '../homepage/homepage.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  String id = '';
  String password = '';

  Widget build(context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          // Container(
          //   child: Image.asset('assets/logo2.jpg'),
          // ),
          Container(
              margin: EdgeInsets.only(
                top: 20.0,
                bottom: 120.0,
                left: 20.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Container(margin: EdgeInsets.only(top: 10.0)),
                    idField(),
                    Container(margin: EdgeInsets.only(top: 10.0)),
                    passwordField(),
                    Container(margin: EdgeInsets.only(top: 20.0)),
                    submitButton(),
                    Container(margin: EdgeInsets.only(top: 40.0)),
                    // forgotPasswordField(),
                    // Container(margin: EdgeInsets.only(top: 20.0)),
                    onSignup(),
                    Container(margin: EdgeInsets.only(top: 20.0))
                  ],
                ),
              ))
        ]));
  }

  Widget onSignup() {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => signupPage()));
      },
      child: Text(
        'Sign up!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
          color: Color.fromARGB(255, 143, 32, 24),
        ),
      ),
    );
  }

  Widget idField() {
    return TextFormField(
      cursorColor: Colors.black,
      // keyboardType: TextInputType.,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 143, 32, 24),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 143, 32, 24),
          ),
        ),
        labelText: 'ID',
        icon: Icon(
          Icons.person_rounded,
          color: Colors.black,
        ),
        labelStyle: TextStyle(
          color: Colors.black38,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
        // hintText: 'example@pec.edu.in',
        // hintStyle: TextStyle(
        //   color: Colors.grey.shade700,
        //   fontSize: 16.0,
        // ),
      ),
      validator: (value) {
        if (value!.length < 6) {
          return 'please enter a valid id!';
        }
      },
      onSaved: (value) {
        id = value!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 143, 32, 24),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 143, 32, 24),
          ),
        ),
        labelText: 'Password',
        icon: Icon(
          Icons.lock,
          color: Colors.black,
        ),
        labelStyle: TextStyle(
          color: Colors.black38,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
        // hintText: 'password',
        // hintStyle: TextStyle(
        //   color: Colors.grey.shade700,
        //   fontSize: 16.0,
        // ),
      ),
      validator: (value) {
        if (value!.length < 8) {
          return 'password must be atleast 8 characters long';
        }
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 143, 32, 24),
        padding: EdgeInsets.all(15.0),
        textStyle: TextStyle(
          color: Colors.white10,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
          print('alldone');
        }
      },
      child: Text('Submit'),
    );
  }
}

