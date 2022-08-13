import 'package:flutter/material.dart';

class UserModel {
  final String email;
  final String uid;
  //final String photoUrl;
  final String firstName;
  final String lastName;
  final String age;

  //const
  const UserModel({
    required this.email,
    required this.uid,
    //required this.photoUrl,
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "uid": uid,
        "email": email,
        //"photoUrl": photoUrl,
        "age": age,
      };
}
