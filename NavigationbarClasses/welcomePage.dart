import 'package:flutter/material.dart';
import 'joinedGroup.dart';
import 'profile.dart';
import 'settings.dart';
import '../CommunityClasses/Community.dart';


class welcomePage extends StatefulWidget {
  thepage createState()=> thepage();
}
class thepage extends State<welcomePage>{
  int _selectedPage = 0;
  final _pageOptions = [
    Community(),
    joinedGroup(),
    profile(),
    settings()
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  
    buildAuthScreen() {
      return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color.fromARGB(255, 238, 242, 226),

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 242, 226),
          iconTheme: IconThemeData(
              color: Colors.grey.shade800),

          centerTitle: true,
          title: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 64, maxWidth: 200),

              child: Text(
                "Hopin",
                style: TextStyle(color: Colors.grey.shade800, fontSize: 25),
              ),


      ),

        ),

        body: _pageOptions[_selectedPage],

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedPage,
            type: BottomNavigationBarType.shifting,
            iconSize: 30.0,
            selectedFontSize: 10,


            items: [
              BottomNavigationBarItem(

                icon: Icon(Icons.public_sharp),
                // ignore: deprecated_member_use
                title: Text('Communities'),
                backgroundColor: Colors.grey.shade800,


              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group_sharp),
                  // ignore: deprecated_member_use
                  title: Text('Joined Groups'),
                  backgroundColor: Colors.grey.shade800


              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  // ignore: deprecated_member_use
                  title: Text('Profile'),
                  backgroundColor: Colors.grey.shade800


              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  // ignore: deprecated_member_use
                  title: Text('Settings'),
                  backgroundColor: Colors.grey.shade800

              )
            ],

            onTap: (index) {
              setState(() {
                _selectedPage = index;
              });
            }
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
  return buildAuthScreen();
  }


  }
