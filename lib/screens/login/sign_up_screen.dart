import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/login/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _signInButtonPressed() {}
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
                  child: Text(
                    'Sign up',
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
                  child: Text('Sign up'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: Text(
                  "Already registered?",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: Text("Sign in"),
              )
=======
>>>>>>> Stashed changes
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
    if (email.contains("@") && email.contains(".com") && email.length > 0) {
      return true;
    }
    return false;
  }
  bool _usernameIsValid() {
    if (username.contains("@") || username.contains(".com")){
      return false;
    }
    if (username.length == 0 || username.contains(" ")) {
      return false;
    }

    return true;
  }

<<<<<<< Updated upstream
=======
  void _enableButtonIfPossible() {
    if (_emailIsValid() && password.length > 4 && _usernameIsValid()) {
      buttonEnabled = true;
    } else {
      buttonEnabled = false;
    }
    setState(() {});
  }

>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextFormField(
<<<<<<< Updated upstream
              controller: _firstNameTextController,
=======
              onChanged: (username) {
                this.username = username;
                _enableButtonIfPossible();
              },
              controller: _usernameTextController,
>>>>>>> Stashed changes
              decoration: InputDecoration(
                hintText: 'username',
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
            child: TextFormField(
<<<<<<< Updated upstream
              controller: _lastNameTextController,
=======
              onChanged: (email) {
                this.email = email;
                _enableButtonIfPossible();
              },
              controller: _emailTextController,
>>>>>>> Stashed changes
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
            child: TextFormField(
<<<<<<< Updated upstream
=======
              onChanged: (password) {
                this.password = password;
                _enableButtonIfPossible();
              },
>>>>>>> Stashed changes
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
            onPressed: () {
            },
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blueGrey[100],
              ),
              padding: EdgeInsets.all(10),
              child: Text('Sign up'),
            ),
          ),
        ],
      ),
    );
  }
}
