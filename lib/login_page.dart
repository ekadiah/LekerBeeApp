import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _incrementCounter()
  {
    setState(() {

      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      body: Image.asset('assets/images/logo_lokerbee_w'),
      Padding(
      padding: EdgeInsets.all(0.0),
      child:
      Text(
          'Lupa Password?',
          style: TextStyle(
              color: Colors.yellow,
              fontSize: 30.0
          )
      ),
    ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Masuk',
        heroTag: "Masuk",
        onPressed: (){Navigator.pushNamed(context, "/login");},),
      Image.asset('assets/images/line'),Padding(
      padding: EdgeInsets.all(0.0),
      child:
      Text(
          'atau',
          style: TextStyle(
              color: Colors.yellow,
              fontSize: 30.0
          )
      ),
    ),
      Image.asset('assets/images/line'),IconButton(
      icon: Image.asset(''),
      iconSize: 50,
      heroTag: "",
      onPressed: () {},
    ),IconButton(
      icon: Image.asset(''),
      iconSize: 50,
      heroTag: "",
      onPressed: () {},
    ),IconButton(
      icon: Image.asset(''),
      iconSize: 50,
      heroTag: "",
      onPressed: () {},
    ),IconButton(
      icon: Image.asset(''),
      iconSize: 50,
      heroTag: "",
      onPressed: () {},
    ),Padding(
      padding: EdgeInsets.all(0.0),
      child:
      Text(
          'Belum punya akun? ',
          style: TextStyle(
              color: Colors.yellow,
              fontSize: 30.0
          )
      ),
    ),
      Padding(
        padding: EdgeInsets.all(0.0),
        child:
        Text(
            'DAFTAR',
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30.0
            )
        ),
      ),
    );
  }
}