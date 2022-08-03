
import 'package:flutter/material.dart';

class temp_nav extends StatelessWidget {
  const temp_nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Center(
        child:Scaffold( 
          body:Text("TEMP NAV PAGE İS OPENED")
        ) ,)
        
    );
  }
}