import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  //collection ref

  final  CollectionReference communityList = FirebaseFirestore.instance.collection('CommunityList');

}