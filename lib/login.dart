import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Test",
            ),
            buildTextField(),
            RaisedButton(
              onPressed: (){},
              child: Text(
                "Login",
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField buildTextField() => TextField();
}
