import 'package:flutter/material.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/services/authhandle.dart';
import 'file:///C:/Users/NaifAsl/Desktop/College%20shit/280%20Project%201743398%20C1/hopin/lib/Authentication/login.dart';

class register extends StatefulWidget {
  @override

  registerstate createState() => registerstate();
}
class registerstate extends State<register>{
  final authhandle _auth = authhandle();
  final _fieldkey = GlobalKey<FormState>();


  DateTime _dateTime;
  String username = '';
  String password = '';
  String email = '';
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
            constraints: BoxConstraints(maxHeight: 32, maxWidth: 200),

            child: Text(
              "Registration",
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
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,

                    child: Image.asset('Images/logo.png')),
              ),
            ),
            Padding(

              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 0, bottom: 10),

              child: TextFormField(


                validator: (value)=> value.isEmpty ? 'Enter your User name' : null ,
                onChanged: (value){
                  setState(() => username = value);
                  print(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name'),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 0, bottom: 10),

              child: TextFormField(
                validator: (value)=>  value.isEmpty ? 'email incorrect or empty' : null ,
                onChanged: (value){
                  setState(() => email = value);
                  print(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 0, bottom: 10),

              child: TextFormField(
                validator: (value)=> value.length<8 ? 'Password must be at least 8 characters' : null ,
                onChanged: (value){
                  setState(() => password = value);
                  print(value);

                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'),
              ),
            ),
            Builder(
                builder: (con) => ButtonTheme(
                  minWidth: 315,
                  height: 40,
                  buttonColor: Colors.grey.shade800,
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black45,width: 0.5) ),

                  child: RaisedButton(

                    onPressed: () => showDatePicker(
                      context: con,
                      initialDate:  DateTime.now(),
                      firstDate:DateTime.now().subtract(Duration(days: 25550)),
                      lastDate:  DateTime.now(),
                  ).then((date) {
                    setState(() {
                      _dateTime = date;

                    });
                  }),

                    child: Text(_dateTime == null ? 'Please enter your date of birth' : _dateTime.day.toString() + '/'+ _dateTime.month.toString() + '/'+ _dateTime.year.toString()),
                    textColor: Colors.white,


                ),

            ),
            ),


Padding(
            padding: const EdgeInsets.only(
                left: 50, right: 50, top: 0, bottom: 10),
),
            Container(
              height: 50,
              width: 230,

              decoration: BoxDecoration(
                  color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () async {
                  if(_fieldkey.currentState.validate()){
                  dynamic result = await _auth.registerEmailPassword(email,password);
                  if(result==null){
                  setState(()=>error='Registration info is incomplete or incorrect');
                  }else{
                    Navigator.push(
                    context, MaterialPageRoute(builder: (_) => login()));
                  }

                  }


                },
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),

              ),

            ),
            SizedBox(
              height: 10),
            Text(error,style: TextStyle(
              color: Colors.red,
              fontSize: 15
            ),)





          ],
        ),
        ),
      ),
      ),
    );
  }




}