import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:movies/screens/login/sign_up_screen.dart';
>>>>>>> Stashed changes

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _signInButtonPressed() {}
    return Scaffold(
<<<<<<< Updated upstream
=======
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
      ),
>>>>>>> Stashed changes
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 40,
                    ),
                  )),
              SignUpForm(),
<<<<<<< Updated upstream
              FlatButton(
                padding: EdgeInsets.all(10),
                onPressed: null,
                child: Container(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blueGrey[100],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text('Sign in'),
                ),
              ),
=======
              Container(
                margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text("Sign up"),
              ),
>>>>>>> Stashed changes
            ]),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignUpForm> {
  String email = "";
  var password = "";
  var buttonEnabled = false;
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  bool _emailIsValid() {
    if (email.contains("@") && email.contains(".com") && email.length > 4) {
      return true;
    }
    return false;
  }

  void _enableButtonIfPossible() {
    if (password.length > 0 && _emailIsValid()) {
      buttonEnabled = true;
    } else {
      buttonEnabled = false;
    }
    setState(() {});
  }

  void _singInWithFirebase() {}

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
              onChanged: (email) {
                this.email = email;
                _enableButtonIfPossible();
              },
              controller: _emailTextController,
              decoration: InputDecoration(
                hintText: 'email',
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
                hintText: 'password',
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
          FlatButton(
            padding: EdgeInsets.all(10),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              if (buttonEnabled) {
                _singInWithFirebase();
              }
            },
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: buttonEnabled ? Colors.blue[100] : Colors.blueGrey[100],
              ),
              padding: EdgeInsets.all(10),
              child: Text('Sign in'),
            ),
          ),
        ],
      ),
    );
  }
}
