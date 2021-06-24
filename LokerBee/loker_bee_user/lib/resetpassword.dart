

import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/backgroundreset.png",
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Scrollbar(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text('Masukan username atau email yang anda gunakan pada profil anda.'
                'Link untuk mengubah password akan dikirimkan ke email anda.'),

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

                  Padding(padding: EdgeInsets.only(bottom: 40.0)),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.orange,
                        disabledColor: Colors.orange,
                        child: Text(
                          "Reset Password",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: null),
                  ),

                  
                  Padding(padding: EdgeInsets.only(bottom: 30.0)),

                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                    child: Text(
                      'Sudah Punya Akun?\n'
                          'Daftar',
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),

    );
  }
}
