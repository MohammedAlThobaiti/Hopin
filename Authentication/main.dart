import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/services/authhandle.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/Authentication/login.dart';
import '../Registeration/register.dart';
import '../NavigationbarClasses/welcomePage.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp( debugShowCheckedModeBanner: false,

    home: Home(),
  )
  );
}


class Home extends StatefulWidget {

  @override

  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  bool isAuth = false;
  final  authhandle _auth = authhandle();


  Scaffold buildUnAuthScreen(){

    return Scaffold(

    backgroundColor: Color.fromARGB(255, 238, 242, 226),

      body:

      Container(

        decoration: BoxDecoration(

        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset('Images/logo.png'),

            Text('Weolcome to Hopin',
              style: TextStyle(
                fontSize: 25.0,

                color: Color.fromARGB(255, 74,75, 70),
              ),
            ),
          new RaisedButton(
            color: Colors.grey.shade800,
            child: new Text("     Create a new Account      "),
            textColor:Colors.white,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
            }


          ),
            new RaisedButton(
                color: Colors.grey.shade800,
                child: new Text("Log into an existing account"),
                textColor: Colors.white,

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                }
            ),
            new RaisedButton(
                color: Colors.grey.shade800,
                child: new Text("               Guest User                "),
                textColor: Colors.white,

                onPressed: () async {
                  dynamic result = await _auth.signinAnon();
                  if(result == null){
                    print("error signin main class");
                  }else{
                    print("guest sign in correctly");
                    print(result.uid);
                  }
                }
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
                  alignment: Alignment.bottomCenter,
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

  @override
  Widget build(BuildContext context) {

    return  buildUnAuthScreen(

    );
  }
}
