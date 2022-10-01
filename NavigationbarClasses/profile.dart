
import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:transparent_image/transparent_image.dart';
import 'add_image.dart';
// ignore: camel_case_types
class profile extends StatefulWidget{



  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  String name= "";
  String username= "";
  String bio= "";
  String imageUrl;


  @override
  Widget build(BuildContext context) {

    return  Stack(

      children: <Widget>[
        Positioned(

          left:165,

          child:CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('Images/UserProfile.png'),
          ),),
        Positioned(
          top: 80,
          left:160,
          child:Text(
            'Full Name',
            style: TextStyle(
              fontFamily: 'BalooBhai',
              fontSize: 20,
            ),
          ),),

    Positioned(
    top: 100,
    left:163,



    child:ColoredBox( color: Colors.orangeAccent,child: Text(

      '@Username',

      style: TextStyle(
        color: Colors.black87,
        fontFamily: 'BalooBhai',
        fontSize: 15,
      ),
    ), ),
    ),


        Positioned(
          top: 120,
          left:20,



          child:ColoredBox( color: Colors.orangeAccent,child: Text(

            'Bio:',

            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'BalooBhai',
              fontSize: 15,
            ),
          ), ),
        ),

//SizedBox.fromSize()


    StreamBuilder(
          stream: Firestore.instance.collection('User1').snapshots(),
          builder: (context, snapshot) {
            return !snapshot.hasData
                ?     Positioned(
                left:220,
                top:250,
                child: Container(
                  height: 100,
                  width: 100,
              child: CircularProgressIndicator(),

            ))
                :     Positioned(

           //////////////////// POS OF PROFILE MEDIA/////////////////////////////////
                left:5,
                top:250,

                child: Container(
                  ///////// SIZE OF PROFILE MEDIA //////////////////////////
                  height: 300,
                  width: 400,


              padding: EdgeInsets.all(4),

              child: GridView.builder(

                  itemCount: snapshot.data.documents.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return       InkWell (
                        onTap: ()  {
                          print("tapped an image");

                        },child:
                    Positioned(

                      height:1000,
                      width: 1000,

                        child: Container(

                      height:1000,
                      width: 1000,
                      margin: EdgeInsets.all(3),
                      child: FadeInImage.memoryNetwork(
                          fit: BoxFit.cover,
                          placeholder: kTransparentImage,
                          image: snapshot.data.documents[index].get('url')),
                        ),

                    )
                    );

                  }
                  ),
                ),
            );
          },
    ),



        Positioned(
          left:300,
          top:210,
////////////////////////////////////////////////////////////////////////////

          child:RaisedButton.icon(

            label: Text(""),
            color: Colors.grey.shade800,

            icon:Icon(Icons.add_a_photo_outlined,color: Colors.white,),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AddImage()));
            },
          ),),
],

    );


  }

  }