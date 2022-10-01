import 'package:flutter/material.dart';
import './postMedia.dart';
import './joinedGroup.dart';
import './profile.dart';
import './settings.dart';
import './register.dart';
import './searchCommunity.dart';
import './welcomePage.dart';





void main() => runApp(MaterialApp(

home: Home(),
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  bool isAuth = false;

  Scaffold buildUnAuthScreen(){
    return Scaffold(
      appBar: AppBar(
        title: Text ('Hopin',

        style: TextStyle(
          fontFamily: "CaesarDresser",
          color: Colors.blueGrey
        ),

    ),
        centerTitle: true,
      backgroundColor: Colors.cyan[50],
      ),
      body:

      Container(
        padding: EdgeInsets.all(20.0),

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('Images/logo.png'),

            Text('Weolcome to Hopin',
            style: TextStyle(
              fontFamily: "CaesarDresser",
              fontSize: 40.0,
              color: Colors.blueGrey,

            ),
            ),

            GestureDetector(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>welcomePage()));

                },
            child: Container(


              width: 260.0,
              height: 60,

              decoration: BoxDecoration(


              image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('Images/google_signin_button.png'),
                  fit: BoxFit.cover
              ),


            ),


            ),

            )

          ],
        ),
      ),
    );
  }


  final tabs = [
    Center(child: Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('Images/UserProfile.png'),
        ),
        Text(
          'Naif Alaslani',
          style: TextStyle(
            fontFamily: 'BalooBhai',
            fontSize: 25,
          ),
        ),

        SizedBox(
          height: 20.0,
          width: 200,
          child: Divider(
            color: Colors.teal[100],
          ),
        ),

        Card(
            color: Colors.white,
            margin:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal[900],
              ),
              title: Text(
                'aslaninaif@gmail.com',
                style:
                TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
              ),
            )),
        Card(
          color: Colors.white,
          margin:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              Icons.location_on,
              color: Colors.teal[900],
            ),
            title: Text(
              'Jeddah, Kingdom of Saudi Arabia',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Neucha'),
            ),
          ),
        )
      ],
    )
    ),
    Center(child: Container(

      //width: 80,
      //height: 80,
      padding: EdgeInsets.all(50.0),

      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 1.0),

        children: <Widget>[RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.audiotrack), label: Text('Music'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.cake), label: Text('Cooking'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.brush), label: Text('Arts'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.directions_bike), label: Text('Sports'),elevation: 10,color: Colors.cyan[50],),],
      ),

    )),
    Center(child: Container(

      //width: 80,
      //height: 80,
      padding: EdgeInsets.all(50.0),

      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 1.0),

        children: <Widget>[RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.audiotrack), label: Text('Musicc'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.cake), label: Text('Cooking'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.brush), label: Text('Arts'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.directions_bike), label: Text('Sports'),elevation: 10,color: Colors.cyan[50],),],
      ),

    )),
    Center(child: Container(

      //width: 80,
      //height: 80,
      padding: EdgeInsets.all(50.0),

      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 1.0),

        children: <Widget>[RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.audiotrack), label: Text('Musiccc'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.cake), label: Text('Cooking'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.brush), label: Text('Arts'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.directions_bike), label: Text('Sports'),elevation: 10,color: Colors.cyan[50],),],
      ),

    )),
    Center(child: Container(

      //width: 80,
      //height: 80,
      padding: EdgeInsets.all(50.0),

      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 1.0),

        children: <Widget>[RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.audiotrack), label: Text('Musicvvv'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.cake), label: Text('Cooking'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.brush), label: Text('Arts'),elevation: 10,color: Colors.cyan[50],),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.directions_bike), label: Text('Sports'),elevation: 10,color: Colors.cyan[50],),],
      ),

    )),

  ];

  @override
  Widget build(BuildContext context) {

    return  buildUnAuthScreen(

    );
  }
}
