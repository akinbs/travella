import 'package:flutter/material.dart';


import 'package:travella_01/information_page/information_page.dart';


import '../models/mekan.dart';

class IconPage extends StatelessWidget {




  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold( 
      body:
       Container(

      ),
    );

    return InformationPage(selectedPlace: Mekan("Ceneviz Kalesi", "kalE", "ı.png"));

  }
}