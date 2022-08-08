

import 'package:flutter/material.dart';

import 'package:travella_01/data/rota_item.dart';
import 'package:travella_01/data/strings.dart';
import 'package:travella_01/information_page/contents/information_pictures.dart';
import 'package:travella_01/models/rota.dart';


class route_page extends StatelessWidget {
  late List<Rota> TumRotalar= [];
  route_page(){ 
    TumRotalar = Veri();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      extendBodyBehindAppBar: true,
      body:Container( 
        decoration: BoxDecoration(
          
          image:DecorationImage(
          
            fit: BoxFit.cover,
            opacity: 0.4,
            image:AssetImage("assets/images/duzce_5.jpg") ) ),
        child: Center( 
          child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1 , ),
          itemCount: 9,
          itemBuilder: (context, index) { 
        return routes_item(gosterilenRota: TumRotalar[index]);
        
          },  
          )
          
        ),
      ),
    );
  } 
}

List<Rota> Veri() {
  List<Rota> temp=[]; 

  for(int i=0;i<9;i++,){ 
    var fotolar = Strings.Rotalar[i];
    Rota ekleneneFotolar = Rota(fotolar);
    temp.add(ekleneneFotolar);
  } 
  return temp;
}