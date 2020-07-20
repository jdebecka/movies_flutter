import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _signInButtonPressed() {}
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
=======
        title: Text(
        'Sign up',
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 40,
        ),
      ),
>>>>>>> e7ef981617e0538a4789b32ba670affc25e293a4
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
<<<<<<< HEAD
              Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 40,
                    ),
                  )),
              SignUpForm(),
              ButtonTheme(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                child: RaisedButton(
                  onPressed: () {},
                    color: Colors.pink,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w300)),
                ),
              ),
=======
              SignUpForm(),
>>>>>>> e7ef981617e0538a4789b32ba670affc25e293a4
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
  final _auth = FirebaseAuth.instance;
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
    if (username.contains("@") || username.contains(".com")){
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
      final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      int count = 0;
      Navigator.of(context).popUntil((_) => count++ >= 2);
      print("success");
    } catch (e){
      print("whoops something went wrong");
      print(e);
    }
  }

  var username;
  var email;
  var password;

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
                hintText: 'username',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[50]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink),
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
                hintText: 'email',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[50]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          Padding(
<<<<<<< HEAD
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 30.0),
            child: TextFormField(
              onChanged: (_firstNameTextController) {
                password = _usernameTextController.toString();
=======
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: TextField(
              onChanged: (password) {
                this.password = password;
                _enableButtonIfPossible();
>>>>>>> e7ef981617e0538a4789b32ba670affc25e293a4
              },
              obscureText: true,
              controller: _passwordTextController,
              decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink[50]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
              style: TextStyle(
                color: Colors.blueGrey[600],
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              _signUpWithFirebase();
            },
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: buttonEnabled ? Colors.blue[100] : Colors.blueGrey[100],
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
