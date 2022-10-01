
import 'package:flutter/material.dart';

class createcommunity extends StatefulWidget {
  @override

  createcomm createState() => createcomm();
}
class createcomm extends State<createcommunity>{


  @override
  Widget build(BuildContext context) {

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
    "Create Community",
    style: TextStyle(color: Colors.grey.shade800, fontSize: 23),
    )


    ),

    ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Container(
              width: 265,
              height: 200,

              child: Image.asset('Images/logo.png')),
        ),
      ),
      Padding(

        padding: const EdgeInsets.only(
            left: 50, right: 50, top: 0, bottom: 15),

        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Community Name'),

        ),
      ),
       Padding(
         padding: const EdgeInsets.only(
             left: 50, right: 50, top: 0, bottom: 15),
       child: Align(
         alignment: Alignment.centerLeft,
          child: Text(
            "Description",
            style: TextStyle(
            fontSize: 15,
              color: Colors.grey.shade800
          ),
          ),

        ),
       ),

      Padding(
        padding: const EdgeInsets.only(
            left: 50, right: 50, top: 0, bottom: 15),

        child: TextField(

      decoration: const InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 50.0),
        border: OutlineInputBorder(),

  ),
),

      ),
            Padding(padding: const EdgeInsets.only(
                left: 50, right: 50, top: 50, bottom: 15), ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800
                ),
                child: FlatButton.icon(onPressed: null,
                    icon: Icon(Icons.add,color: Colors.white,),
                     label: Text('Create',style: TextStyle(color: Colors.white),)
                ),
              )
      ]
    ),

    )
    );

  }

  }