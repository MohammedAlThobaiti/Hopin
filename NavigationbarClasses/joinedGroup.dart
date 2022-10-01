

import 'package:flutter/material.dart';

class joinedGroup extends StatelessWidget{


  @override
  Widget build(BuildContext context){

    return ListView(
      children: <Widget>[

        ExpansionTile(
            leading: Icon(Icons.music_note),

            title: Text('FCIT17 Piano Group'),
            subtitle: Text("Time: Monday at 7pm"),
            children: <Widget>[
              new RaisedButton(
                child: new Text('View'),
                onPressed: () {
                  print('test');
                },
                
             



              ),
            ]

        ),
        ExpansionTile(
            leading: Icon(Icons.sports_basketball),

            title: Text('FCM\'s Basketball practice'),
            subtitle: Text("Every day at 5:30pm"),
            children: <Widget>[
    new RaisedButton(
    child: new Text('View'),
    onPressed: () {
      print('test');
    }

              ),
            ]

        )




      ],
    );

  }


}