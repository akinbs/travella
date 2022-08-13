import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:travella_01/data/strings.dart';
import 'package:travella_01/information_page/constants.dart';
import 'package:travella_01/welcome_page/register_page.dart';

class DrawerIcerigi extends StatefulWidget {
  @override
  State<DrawerIcerigi> createState() => _DrawerIcerigiState();
}

class _DrawerIcerigiState extends State<DrawerIcerigi> {
  String firstName = "";
  String lastName = "";
  //String photoUrl="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserName();
  }

  void getUserName() async {
    //mevcut kullanıcının verisini getirme
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    print(snap.data());
    setState(() {
      firstName = (snap.data() as Map<String, dynamic>)['firstName'];
      lastName = (snap.data() as Map<String, dynamic>)['lastName'];
      lastName = (snap.data() as Map<String, dynamic>)['lastName'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Column(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('${firstName + " " + lastName}'),
          accountEmail: Text(user.email!),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/components/profilephoto.jpg"),
          ), //yuvarlak bir kullanıcı fotosu yapmaya çalıştım ama olmadı.
          decoration: BoxDecoration(
            color: mainColor,
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Bildirimler"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Konum"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Ayarlar"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Çıkış Yap"),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  GoogleSignIn().disconnect();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
