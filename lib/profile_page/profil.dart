import 'dart:math';
import 'package:flutter/material.dart';
import 'package:travella_01/profile_page/fotograf.dart';
import 'package:travella_01/profile_page/tabbar.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPage createState() => _ProfilPage();
}

class _ProfilPage extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Center(
          child: Column(
            children: [
              foto(),
              SizedBox(
                height: 12,
              ),
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
                    SingleChildScrollView(child: tabbar()),
                  ],
                ),
              ),

/* SizedBox(height: 110,),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Divider(
                  height: 1.0,
                  thickness: 2.4,
                  endIndent: 42.0,
                  indent: 42.0,
                  color: Color.fromARGB(221, 160, 24, 24),
                ),
              ),   */
            ],
          ),
        ));
  }
}
