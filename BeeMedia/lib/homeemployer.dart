
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';

class HomeEmployer extends StatefulWidget {
  @override
  _HomeEmployerState createState() => _HomeEmployerState();
}

class _HomeEmployerState extends State<HomeEmployer> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Stack(
          children: [
            FlatButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              onPressed: (){},
              child: Align(
                alignment: FractionalOffset.centerRight,
                child: Icon(
                  FontAwesome.search,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
        ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.orangeAccent,
        ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Nama Akun Email", style: TextStyle(
                color: Colors.white
              ),),
              accountEmail: Text("alamatemail@gmail.com", style: TextStyle(
                  color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.orangeAccent
              ),
            ),

            ListTile(
              title: Text("Tutorial", style: TextStyle(
                  color: Colors.white),),
              onTap: (){},
            ),

            ListTile(
              title: Text("Fitur", style: TextStyle(
                  color: Colors.white),),
                onTap: (){}
            ),

            ListTile(
              title: Text("Tentang Kami", style: TextStyle(
                  color: Colors.white),),
                onTap: (){}
            ),

            ListTile(
              title: Text("Help and Feedback", style: TextStyle(
                  color: Colors.white),),
                onTap: (){}
            ),

            ListTile(
              title: Text("Settings", style: TextStyle(
                  color: Colors.white),),
                onTap: (){}
            ),
          ],
        ),
      ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Kandidat'),
              backgroundColor: Colors.white
            ),

            BottomNavigationBarItem(
                icon: Icon(FontAwesome.building),
                title: Text('Perusahaan'),
                backgroundColor: Colors.white
            ),

            BottomNavigationBarItem(
                icon: Icon(FontAwesome5.newspaper),
                title: Text('Berita'),
                backgroundColor: Colors.white
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                title: Text('Chat'),
                backgroundColor: Colors.white
            ),

            BottomNavigationBarItem(
                icon: Icon(Entypo.user),
                title: Text('Profile'),
                backgroundColor: Colors.white
            ),
          ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
