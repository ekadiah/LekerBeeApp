import 'package:flutter/material.dart';
import 'package:ruanghr/resetpassword.dart';
import 'package:ruanghr/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _password;
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/appbar.png",
              fit: BoxFit.contain,
              width: double.infinity,
            ),
            Scrollbar(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 50.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Email/Username',
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  )),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter a email/username';
                                }
                              },
                            ),
                            new TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    onPressed: _toggle,
                                  )),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                if (value.length < 8) {
                                  return 'Password should be more than 8 characters';
                                }
                              },
                              onSaved: (value) => _password = value,
                              obscureText: _obscureText,
                            ),
                            Align(
                              alignment: FractionalOffset.bottomLeft,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/resetpassword');
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => ResetPassword()),
//                        );
                                },
                                child: Text(
                                  'Lupa Password?',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: Colors.orange,
                                      disabledColor: Colors.orange,
                                      child: Text(
                                        "Masuk",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: null),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/signup');
                                    },
                                    child: Text(
                                      'Belum Punya Akun?\n'
                                      'Daftar',
                                      style: TextStyle(
                                          color: Colors.orangeAccent,
                                          decoration: TextDecoration.underline),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 16.0),
                            ),
                            Align(
                              alignment: FractionalOffset.bottomLeft,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Masuk Dengan',
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  //ROW UNTUK FB DAN TWIT
                                  children: [
                                    Expanded(
                                      child: FlatButton(
                                        onPressed: null,
                                        child: Image.asset(
                                            "assets/Facebook.png"), //GANTI FOTO FACEBOOK
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: FlatButton(
                                        onPressed: null,
                                        child:
                                            Image.asset("assets/Twitter.png"),
                                      ),
                                      flex: 1,
                                    )
                                  ],
                                ),
                                Row(
                                  //ROW UNTUK GOOGLE DAN LINKEDIN
                                  children: [
                                    Expanded(
                                      child: FlatButton(
                                        onPressed: null,
                                        child: Image.asset("assets/Google.png"),
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: FlatButton(
                                        onPressed: null,
                                        child:
                                            Image.asset("assets/Linkedln.png"),
                                      ),
                                      flex: 1,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
