import 'package:flutter/material.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/CommunityClasses/explorecommunity.dart';


class Community extends StatelessWidget{


  @override
  Widget build(BuildContext context){



    return  ListView(


      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Container(
                width: 200,
                height: 200,

                child: Image.asset('Images/logo.png')),
          ),
        ),
        ListTile(
          //   leading: DropdownMenuItem(child: Text('data')),
          leading: Icon(Icons.place),
          title: Text('Location: Jeddah'),
        ),
        ExpansionTile(
          title: Text(''),
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 379,
              minHeight: 260,

            ),
            child: Image.asset('Images/joinedComm.png', fit: BoxFit.cover),
          ),

          /*title: Text("Concerts"),
         subtitle: Text("Live Music shows , DJ's , Bands. "),*/

          children: <Widget>[
            ExpansionTile(
                leading: Icon(Icons.music_note),
                title: Text('Piano Community of FCIT'),
                subtitle: Text("Location: KAU University"),
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                        Icons.group_sharp),
                    label: Text('View Groups'),
                    color: Colors.indigo,



                  ),
                  RaisedButton.icon(
                    onPressed: () {


                    },
                    icon: Icon(
                        Icons.dangerous),
                    label: Text('Leave Community'),
                    color: Colors.grey,



                  ),

                ]
            ),
            ExpansionTile(
                leading: Icon(Icons.sports_motorsports_outlined),
                title: Text('KAU\'s Equestrian Club'),
                subtitle: Text("Location: KAU University, new Equestrian Club "),
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                        Icons.group_sharp),
                    label: Text('View Groups'),
                    color: Colors.indigo,



                  ),
                  RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                        Icons.dangerous),
                    label: Text('Leave Community'),
                    color: Colors.grey,



                  ),

                ]

            ),


          ],
        ),

        ListTile(),
        ExpansionTile(
            title: Text(''),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 379,
                minHeight: 260,

              ),
              child: Image.asset('Images/community.png', fit: BoxFit.cover),
            ),
            children: <Widget>[



                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => explorecommunity()));
                      },
                      icon: Icon(
                          Icons.explore_outlined),
                      label: Text('Explore Communities'),
                      textColor: Colors.white,
                      color: Colors.grey.shade800,



                    ),


                  ]
              ),










      ],

    );

  }
}