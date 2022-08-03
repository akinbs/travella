import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:travella_01/home.dart';



import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
/*
<<<<<<< HEAD
=======

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int index = 0;
  int currentPage = 0;

  final screens = [
    AnaSayfaCenterWidget(),
    InformationPage(),
    Whatif(),
  ];

  var mainColor = const Color.fromARGB(255, 0, 202, 157);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //appBar: AppBarLayout(), bu app bar'ı sayfalarda kendi alanlarınıza koyacaksınız
      body: screens[index],
      bottomNavigationBar: bottomNavBar(context),
      //AnaSayfaCenterWidget(),
      drawer: Drawer(
        child: DrawerIcerigi(),
      ),
    );
  }

//bottomNavBar
  Theme bottomNavBar(BuildContext context) {
    final menuIcons = <Widget>[
      Icon(
        CupertinoIcons.compass,
        size: 30,
      ),
      Icon(
        CupertinoIcons.location_north_fill,
        size: 30,
      ),
      Icon(Icons.account_circle, size: 30),
    ];
    //yorum satırı
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      child: CurvedNavigationBar(
        color: mainColor,
        backgroundColor: Colors.transparent,
        height: 50,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 250),
        index: index,
        items: menuIcons,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
//yorum satırı

}
>>>>>>> 9823540fdef6bd674febe43590c85aa609e0ee92
*/