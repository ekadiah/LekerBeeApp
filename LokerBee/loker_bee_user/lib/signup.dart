import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loker_bee_user/kebijakanprivasi.dart';
import 'package:loker_bee_user/syaratketentuan.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _password;
  String _confirmpassword;
  bool _obscureText = true;
  bool _obscureTextconfirm = true;
  bool checkboxValue = false;
  bool _toggleCandidate = true;
  bool _toggleEmployer = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _confirmtoggle() {
    setState(() {
      _obscureTextconfirm = !_obscureTextconfirm;
    });
  }

  void _toggleCE() {
    setState(() {
      _toggleCandidate = !_toggleCandidate;
      _toggleEmployer = !_toggleEmployer;
    });
    print("candidates");

    print(_toggleCandidate);
    print("employer");
    print(_toggleEmployer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: FractionalOffset.topLeft,
                      child: Text(
                        'Buat\nAkun Baru.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                            fontSize: 40.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color:
                                  _toggleCandidate ? Colors.blue : Colors.white,
                              disabledColor: Colors.blue,
                              child: Text(
                                "Candidate",
                                style: TextStyle(
                                    color: _toggleCandidate
                                        ? Colors.white
                                        : Colors.blue),
                              ),
                              onPressed: () {
                                // ignore: unnecessary_statements
                                _toggleCandidate ? null : _toggleCE();
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color:
                                  _toggleEmployer ? Colors.blue : Colors.white,
                              disabledColor: Colors.white,
                              child: Text(
                                "Employer",
                                style: TextStyle(
                                    color: _toggleCandidate
                                        ? Colors.blue
                                        : Colors.white),
                              ),
                              onPressed: () {
                                setState(() {
                                  // ignore: unnecessary_statements
                                  _toggleEmployer ? null : _toggleCE();
                                });
                              }),
                        )
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
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
                    new TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Konfirmasi Password',
                          labelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureTextconfirm
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: _confirmtoggle,
                          )),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        if (value.length < 8) {
                          return 'Password should be more than 8 characters';
                        }
                      },
                      onSaved: (value) => _confirmpassword = value,
                      obscureText: _obscureTextconfirm,
                    ),
                  ],
                )),
            CheckboxListTile(
              value: checkboxValue,
              onChanged: (bool val) => setState(() => checkboxValue = val),
              title: Text(
                "Dengan klik checkbox, anda setuju dengan",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 13,
                ),
              ),
              subtitle: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SyaratKetentuan()),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Terms and Condition',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    " dan ",
                    style: TextStyle(color: Colors.blue),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KebijakanPrivasi()),
                      );
                    },
                    child: Container(
                      child: Text(
                        'Privacy Policy',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
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
                          "Daftar",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/biodata');
                        }),
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                      child: Text(
                        'Sudah Punya Akun?\n'
                        'Masuk',
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            decoration: TextDecoration.underline),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
