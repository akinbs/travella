import 'package:flutter/material.dart';
import 'package:travella_01/home.dart';



void main() {
  runApp(MyApp());
  

} 
 
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
 
   var mainColor = Colors.lightGreenAccent.shade700;
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:AnaSayfa(),
      
    );
        
    
  
  
  }
  
}
