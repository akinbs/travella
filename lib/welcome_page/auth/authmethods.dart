import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travella_01/data/stroge.dart';
import 'package:travella_01/models/users.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String age,
    //required Uint8List file,
  }) async {
    String res = "Bir hata ile karşılaşıldı";
    try {
      if (email.isNotEmpty ||
              password.isNotEmpty ||
              firstName.isNotEmpty ||
              lastName.isNotEmpty ||
              age.isEmpty
          //file

          ) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        /*String photoUrl = await StrogeMethods()
            .uploadImageToStorege('profilePics', file, false);*/

        model.UserModel userModel = model.UserModel(
          email: email,
          uid: cred.user!.uid,
          //photoUrl: photoUrl,
          firstName: firstName,
          lastName: lastName,
          age: age,
        );

        await _firestore.collection('users').doc(cred.user!.uid).set(
              userModel.toJson(),
            );
        /*await _firestore.collection('users').doc(cred.user!.uid).set({
          'email': email,
          'uid': cred.user!.uid,
          'photoUrl': photoUrl,
          'firstName': firstName,
          'lastName': lastName,
          'age': age,
        });*/
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Bir şeyler ters gitti!";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "Başarılı";
      } else {
        res = "Lütfen tüm alanlarını doldurunuz!";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
