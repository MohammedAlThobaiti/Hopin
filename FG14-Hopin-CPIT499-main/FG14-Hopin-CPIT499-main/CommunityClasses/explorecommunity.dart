import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/CommunityClasses/createcommunity.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/Authentication/login.dart';

class explorecommunity extends StatelessWidget{


  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 242, 226),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 242, 226),
        iconTheme: IconThemeData(
            color: Colors.grey.shade800),
        centerTitle: true,
        title: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 64, maxWidth: 200),

            child: Text(
              "Explore Communities",
              style: TextStyle(color: Colors.grey.shade800, fontSize: 20),
            )


        ),

      ),
      body:
       SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Padding(

          padding: const EdgeInsets.only(
              left: 50, right: 50, top: 20, bottom: 40),

          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search for a community',
              suffixIcon: IconButton(
                onPressed:() {},
                icon: Icon(Icons.search),
              )
            ),


          ),
        ),


        Container(

child: Text("Pull from Database in this container"),
        ),


        Padding(padding: EdgeInsets.only(left: 50, right:0 , top: 400, bottom:0 )

        ),
Container(
  height: 50,
  width: 200,

          child: FlatButton.icon(
            color: Colors.grey.shade800,
            icon:Icon(Icons.add,color: Colors.white,) ,

              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => createcommunity()));
              },
           label:Text(
              'Create Community',
              style: TextStyle(color: Colors.white,fontSize: 13),
            ),


        ),
)
]
      )
    ),
    );
  }


}