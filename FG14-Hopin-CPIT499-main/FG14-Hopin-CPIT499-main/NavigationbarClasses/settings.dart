import 'package:flutter/material.dart';

class settings extends StatelessWidget{


  @override
  Widget build(BuildContext context){

    return ListView(

      children: <Widget>[
        ListTile(
          leading: Icon(Icons.language),
          title: Text("Language"),
          subtitle: Text("Change app's Language English only supported at the moment. "),
        ),

        ListTile(
          leading: Icon(Icons.question_answer),
          title: Text("Contact Support"),
          subtitle: Text("Support@Hopin.com"),

        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text("Give us your Feedback!"),
          subtitle: Text("Through the Google Store."),
        ),
        ListTile(
          leading: Icon(Icons.update),
          title: Text("Check for updates"),
        ),

        ListTile(
          leading: Icon(Icons.developer_mode),
          title: Text("Version 0.1"),
        ),





      ],

    );

  }


}