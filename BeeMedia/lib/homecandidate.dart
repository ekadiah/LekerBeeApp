import 'dart:ui';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';

class HomeCandidate extends StatefulWidget {
  @override
  _HomeCandidateState createState() => _HomeCandidateState();
}

class _HomeCandidateState extends State<HomeCandidate> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.orangeAccent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Container(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Card(
                          color: Color(0xFF021635).withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                          
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Image.asset('assets/images/notif.png',
                            height: 40, width: 38),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.home),
              title: Text('Dashboard'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome.search),
              title: Text(
                'Search',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(FontAwesome5.newspaper),
              title: Text('Article'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Entypo.user),
              title: Text('Profile'),
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
