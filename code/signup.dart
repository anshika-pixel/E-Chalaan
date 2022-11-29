import 'package:flutter/material.dart';
import '../homepage/homepage.dart';
import '../globals.dart' as globals;

class signupPage extends StatefulWidget {
  createState() {
    return signupPageState();
  }
}

class signupPageState extends State<signupPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // String name = '';
  String phoneno = '';
  // String email = '';
  String id_no = '';
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 143, 32, 24),
          toolbarHeight: 40.0,
          centerTitle: true,
          title: Text(
            'Sign Up!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 100.0,
                  bottom: 120.0,
                  left: 20.0,
                  right: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20, right: 40),
                        child: id_noField(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20, right: 40),
                        child: nameField(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20, right: 40),
                        child: mobileField(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20, right: 40),
                        child: emailField(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20, right: 40),
                        child: passwordField(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20, right: 40),
                        child: confirmpasswordField(),
                      ),
                      Container(margin: EdgeInsets.only(top: 20.0)),
                      submitButton(),
                      Container(margin: EdgeInsets.only(top: 40.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget id_noField() {
    return TextFormField(
      cursorColor: Colors.black,
      // keyboardType: TextInputType.number,
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
          Icons.account_circle,
          color: Colors.black,
        ),
        labelStyle: TextStyle(
          color: Colors.black38,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
        // hintText: 'sid',
        // hintStyle: TextStyle(
        //   color: Colors.grey.shade700,
        //   fontSize: 16.0,
        // ),
      ),
      validator: (value) {
        if (value!.length < 6) {
          return 'Please enter a valid ID!';
        }
      },
      onSaved: (value) {
        id_no = value!;
      },
    );
  }

  Widget mobileField() {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.phone,
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
        labelText: 'Phone no.',
        icon: Icon(
          Icons.phone,
          color: Colors.black,
        ),
        labelStyle: TextStyle(
          color: Colors.black38,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
        hintText: 'your phone no',
        hintStyle: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 16.0,
        ),
      ),
      validator: (value) {
        if (value!.length != 10) {
          return 'Please enter a valid phone number!';
        }
      },
      onSaved: (value) {
        phoneno = value!;
      },
    );
  }

  Widget nameField() {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
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
        labelText: 'Name',
        icon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        labelStyle: TextStyle(
          color: Colors.black38,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
        hintText: 'name',
        hintStyle: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 16.0,
        ),
      ),
      validator: (value) {
        if (value!.length <= 0) {
          return 'Please enter your name!';
        }
      },
      onSaved: (value) {
        globals.name = value!;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.emailAddress,
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
        labelText: 'Username',
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
        if (!value!.contains('@gmail.com')) {
          return 'please enter a valid email id!';
        }
      },
      onSaved: (value) {
        globals.email = value!;
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

  Widget confirmpasswordField() {
    return TextFormField(
      controller: confirm_password,
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
        labelText: 'Confirm Password',
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
        // hintText: 'your password',
        // hintStyle: TextStyle(
        //   color: Colors.grey.shade700,
        //   fontSize: 16.0,
      ),
      // ),
      validator: (value) {
        if (value! != password) {
          return "passwords don't match!";
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
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
