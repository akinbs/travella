import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travella_01/profile_page/fotograf.dart';
import 'package:travella_01/profile_page/tabbar.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPage createState() => _ProfilPage();
}

class _ProfilPage extends State<ProfilPage> {
  String avatarUrl =
      "https://media-exp1.licdn.com/dms/image/C4D03AQFxOyS6Tubpdw/profile-displayphoto-shrink_400_400/0/1649718241840?e=1665014400&v=beta&t=M0x-zLCXTqYxaBLPjabYvE0ExW4ZlJqqYS8qGzbXPfw";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        extendBody: true,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 75),
              foto(),
              Text(
                "Fehmi Tahsin Demirkan",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "Düzce/Türkiye",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text('Gittiğim Yerler: 15'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.green,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  TextButton(
                    child: Text('Kalan Yerler: 27'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.green,
                      backgroundColor: Colors.teal,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleChildScrollView(
                      child: tabbar(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
