import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                  ),
                ),
              ),
              SignUpForm(),
            ]),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _usernameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  var buttonEnabled = false;
  var username = "";
  var email = "";
  var password = "";

  bool _emailIsValid() {
    if (email.contains("@") && email.contains(".com") && email.length > 6) {
      return true;
    }
    return false;
  }

  bool _usernameIsValid() {
    if (username.contains("@") || username.contains(".com")) {
      return false;
    }
    if (username.length == 0 || username.contains(" ")) {
      return false;
    }

    return true;
  }

  void _enableButtonIfPossible() {
    if (_emailIsValid() && password.length > 4 && _usernameIsValid()) {
      buttonEnabled = true;
    } else {
      buttonEnabled = false;
    }
    setState(() {});
  }

  void _signUpWithFirebase() async {
    try {
      print(email);
      print(password);
      int count = 0;
      Navigator.of(context).popUntil((_) => count++ >= 2);
      print("success");
    } catch (e) {
      print("whoops something went wrong");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextField(
              onChanged: (username) {
                this.username = username;
                _enableButtonIfPossible();
              },
              controller: _usernameTextController,
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextField(
              onChanged: (email) {
                this.email = email;
                _enableButtonIfPossible();
              },
              controller: _emailTextController,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextField(
              onChanged: (password) {
                this.password = password;
                _enableButtonIfPossible();
              },
              obscureText: true,
              controller: _passwordTextController,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextField(
              onChanged: (password) {
                this.password = password;
                _enableButtonIfPossible();
              },
              obscureText: true,
              controller: _passwordTextController,
              decoration: InputDecoration(
                hintText: 'Repeat Password',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[900]),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: RaisedButton(
                onPressed: () {
                  _signUpWithFirebase();
                },
                color: Colors.pink,
                padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                child: Text('Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w300)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
