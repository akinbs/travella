import 'package:flutter/material.dart';

class Populars{ 
  String name;
  IconButton ikon;
  Populars(this.name, this.ikon);
} 
List<Populars> onermeler = popular_data.map((item) => Populars(item["name"],item["ikon"])).toList(); 


List<Map> popular_data = [ 
  { 
    "name":"Yayla",
    "ikon": IconButton(icon:Icon(Icons.emoji_nature_outlined,),
    color: Colors.blue.shade400,
    onPressed: () {
      
    },
    ),
  },
  { 
    "name":"Plaj",
    "ikon":IconButton(icon: Icon(Icons.beach_access),
    color: Colors.orange.shade300,
    onPressed: () {
      
    },),
  },
  { 
    "name":"Tarih",
    "ikon": IconButton(icon: Icon(Icons.fort_sharp),
    color: Colors.red.shade300,
    onPressed: () {},),
  },
  { 
    "name":"cami",
    "ikon": IconButton(icon: Icon(Icons.mosque),
    color: Colors.lime.shade400,
    onPressed: () {
      
    },),
  },
  
];