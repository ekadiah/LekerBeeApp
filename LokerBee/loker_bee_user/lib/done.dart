import 'package:flutter/material.dart';
import 'dart:async';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {

  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacementNamed('/homecandidate');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/bgdone.png",
            fit: BoxFit.fill,
            width: double.infinity,
          ),

          Image.asset(
            "assets/selesai.png",
            fit: BoxFit.contain,
          ),

          SizedBox(
            height: 17,
            width: 17,
          ),



          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Image.asset(
              "assets/done.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

