
//import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hopin/services/AuthUser.dart';



class authhandle {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on firebase user


  AuthUser _userfromfirebase(User user){
    return AuthUser != null ? AuthUser(uid:user.uid) : null;
  }

  //auth change user stream
  Stream<AuthUser> get user{
    return _auth.authStateChanges().map(_userfromfirebase);

  }




  //signin anon
  Future signinAnon() async {
    try{
        UserCredential result = await _auth.signInAnonymously();
        User user = result.user as FirebaseUser;
      return _userfromfirebase(user);
    }catch(e){
    print(e.toString("error"));
    return null;
    }
  }

  //register email and pass
Future registerEmailPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user as FirebaseUser ;
      return _userfromfirebase(user);
    }catch(e) {
    print(e.toString());
    return null;
  }
}

  //login email and pass
  Future LoginEmailPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userfromfirebase(user);
    }catch(e) {
      print(e.toString());
      return null;
    }
  }
  //logout

  }