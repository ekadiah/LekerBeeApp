import 'package:flutter/material.dart';

class GettingStarted extends StatefulWidget {
  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  int page = 0;
  String namaButton = 'Lanjut';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.amberAccent, Color(0xFF3E4462)],
        )),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Align(
                  alignment: FractionalOffset.topRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    physics: BouncingScrollPhysics(),
                    itemCount: slideList.length,
                    onPageChanged: (index) => {
                          page = index,
                          print(page),
                          doSomething(),
                        },
                    itemBuilder: (ctx, i) => SlideItem(i)),
              ),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: 3,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.white,
                    radius: 20.0,
                    dotHeight: 5.0,
//                  dotWidth: 10.0,
                    activeDotColor: Colors.white), // your preferred effect
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 20,
                        offset: Offset(0, 7),
                      )
                    ]),
                    child: FlatButton(
                      child: Text(namaButton.toString()),
//                    page == 2 ? Text('Mulai') : Text('Lanjut'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.white,
                      textColor: Colors.orange,
                      onPressed: () {
                        if (page < 2) {
                          _pageController.jumpToPage(page + 1);
                        } else {
                          print("masuk else");
                          Navigator.of(context).pushReplacementNamed('/login');
                        }
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  doSomething() {
    setState(() {
      if (page == 2) {
        namaButton = 'Mulai';
      } else {
        namaButton = 'Lanjut';
      }
    });
  }
}
