import 'package:flutter/material.dart';

class temp_route extends StatelessWidget {
  const temp_route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Center( 
        child:Scaffold( 
          body: Text("temp route page is opened")
        ),)
    );
  }
}