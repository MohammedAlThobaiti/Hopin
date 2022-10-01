

import 'package:flutter/material.dart';

import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/NavigationbarClasses/welcomePage.dart';
import 'package:hopin/services/authhandle.dart';


class login extends StatefulWidget{


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
final authhandle _auth = authhandle();
final _fieldkey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error ='';

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
            "Login",
            style: TextStyle(color: Colors.grey.shade800, fontSize: 25),
          )


        ),

      ),

      body: SingleChildScrollView(
        child: Container(
          child: Form(
          key: _fieldkey,
          child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,

                    child: Image.asset('Images/logo.png')),
              ),
            ),
            Padding(

              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                validator: (value)=> value.isEmpty ? 'Enter your email' : null ,
                onChanged: (value){
                setState(() => email = value);

                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 25),

              child: TextFormField(
                validator: (value)=> value.length<8 ? 'Password must be at least 8 characters' : null ,
                obscureText: true,
                onChanged: (value){
                  setState(() => password = value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'),
              ),
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () async {
                  if(_fieldkey.currentState.validate()){

                    dynamic result = await _auth.LoginEmailPassword(email, password);
                    if(result==null){
                      setState(()=>error='Login credentials are not correct');
                    }else{
                      Navigator.push(
                         context, MaterialPageRoute(builder: (_) => welcomePage()));
                    }

                  }

               }
                    ,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),

              ),
            ),
            SizedBox(
                height: 10),
            Text(error,style: TextStyle(
                color: Colors.red,
                fontSize: 15
            ),),





          ],
        ),
    ),
        ),
      ),
    );
}
}