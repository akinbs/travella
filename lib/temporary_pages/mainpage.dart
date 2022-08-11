import 'package:flutter/material.dart';
import 'package:travella_01/information_page/constants.dart';

import '../models/mekan.dart';

class main_page extends StatelessWidget {
  Widget _HorizontalBar({required String title, required String subtitle,}){  
    return Container( 
      margin:EdgeInsets.symmetric(horizontal: 10), 
      padding: EdgeInsets.only(left:20), 
      height: 120,
      width: 240, 
      decoration: BoxDecoration(
        color: mainColor, 
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,  
        children: [ 
          Text(title, 
          style: TextStyle(
            fontSize: 22, 
            color:Colors.white,
          ),),
          SizedBox( 
            height:5,            
          ),
          Text(subtitle,
          style: TextStyle(
            fontSize: 19,
            color: Colors.white70
          ),
          )

        ],

      ),
    );

  }
  
  Widget _Items ({required Icon BoxIcon,required String name}){ 
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Color.fromARGB(188, 235, 171, 61),width: 2)
      ),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Container(
            height: 12,
            decoration: BoxDecoration(
            ),
            child: BoxIcon,
          ),
          SizedBox(height: 10,),
          Text(
            name, 
            style:TextStyle(fontSize: 15) ,
          ), 

        ],
      ),
    );

  }
  
  
  
  
  const main_page({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        child:Container(
          height:800, 
          width: double.infinity,
         
          child: ListView(
            
            children: [ 
              Padding(
                padding:const EdgeInsets.only(top:30,left:30),
                child:Text( 
                  "Popüler Mekanlar",
                  style: TextStyle(
                    fontSize: 19, 
                    color:Colors.orange.shade400, 
                    fontWeight: FontWeight.w500,
                  )
    
                ),
                ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Padding( 
                  padding: const EdgeInsets.only(top:30,left:10), 
                  child:Row(
                    children: [
                      _HorizontalBar(title: "Ceneviz Kalesi", subtitle: "Akçakoca"),
                      _HorizontalBar(title: "Yedigöller Milli Parkı", subtitle: "Bolu"),
                      _HorizontalBar(title: "Fakıllı Mağrası", subtitle: "Akçakoca"),
                      _HorizontalBar(title: "Kardüz Yaylası", subtitle: "Düzce"),
                      _HorizontalBar(title: "Mavi Bayraklı Plajı", subtitle: "Akçakoca"),
                      _HorizontalBar(title: "Melensu Park", subtitle: "Düzce"),
                    ],)
                ),
              ), 
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    
                    Padding(
                    padding:EdgeInsets.only(top: 20),
                    child: Container(
                      height:329,

                      child:GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1,
                        children: [
                          _Items(BoxIcon: Icon(Icons.account_balance_rounded), name: "Tarih"),
                          _Items(BoxIcon: Icon(Icons.attractions_rounded), name: "Eğlence"),
                          _Items(BoxIcon: Icon(Icons.beach_access_sharp), name: "Plaj"),
                          _Items(BoxIcon: Icon(Icons.castle_rounded), name: "Kale"),
                          _Items(BoxIcon: Icon(Icons.emoji_food_beverage_rounded), name: "Kafe"),
                          _Items(BoxIcon: Icon(Icons.filter_hdr_sharp), name: "Doğa"),
                          _Items(BoxIcon: Icon(Icons.hiking_rounded), name: "Trekking"),
                          _Items(BoxIcon: Icon(Icons.holiday_village_sharp), name: "Otel"),
                          _Items(BoxIcon: Icon(Icons.emoji_food_beverage_rounded), name: "Kafe"),
                        ],
                      ) ,
                    ),
                    ), 
                    
                  ],
                ),
              )
            ],
          ),
        ),
        ),
    );
  
    
  }
}