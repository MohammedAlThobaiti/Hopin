import 'package:flutter/material.dart';

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

      Container(

      //width: 80,
      //height: 80,
      padding: EdgeInsets.all(50.0),

      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: 1.0),

        children: <Widget>[RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.audiotrack), label: Text('Music'),textColor: Colors.white,elevation: 10,color:Colors.grey.shade800,),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.cake), label: Text('Cooking'),textColor: Colors.white, elevation: 10,color: Colors.grey.shade800,),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.brush), label: Text('Arts'),textColor: Colors.white,elevation: 10,color: Colors.grey.shade800,),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.g_translate_outlined), label: Text('Languages'),textColor: Colors.white,elevation: 10,color: Colors.grey.shade800,),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.videogame_asset_outlined), label: Text('Gaming'),textColor: Colors.white,elevation: 10,color: Colors.grey.shade800,),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.directions_bike), label: Text('Sports'),textColor: Colors.white,elevation: 10,color: Colors.grey.shade800,),



        ],
      ),

    ),
    );
  }


}