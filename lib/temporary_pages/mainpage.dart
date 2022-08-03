import 'package:flutter/material.dart';

class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Center( 
        child:Scaffold( 
          body: Text("main page is opened")
        ),)
    );
  }
}