import 'package:flutter/material.dart';
import 'package:travella_01/AnasayfaIconPage/Icons.dart';
import 'package:travella_01/information_page/constants.dart';

import '../discover_page/discover.dart';
import '../fliters/inanç_listesi.dart';
import '../fliters/tarih_listesi.dart';
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

  Widget _Items ({required IconButton BoxIcon,required String name}){
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
            child:  BoxIcon,

          ),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              name,
              style:TextStyle(fontSize: 30, ) ,
            ),
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
                        height:500,

                        child:GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TarihListesi()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.account_balance_rounded,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TarihListesi()));
                              },), name: "Tarih"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InancListesi()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.mosque,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InancListesi()));
                              },), name: "İnanç"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.attractions_rounded,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Eğlence"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.beach_access_sharp,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Plaj"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.castle_rounded,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Kale"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.emoji_food_beverage_rounded,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Kafe"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.filter_hdr_sharp,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Doğa"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.hiking_rounded,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Trekking"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.holiday_village_sharp,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Otel"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },
                              child: _Items(BoxIcon: IconButton(padding: EdgeInsets.only(bottom: 2),icon: Icon(Icons.emoji_food_beverage_rounded,size: 40,),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Discover()));
                              },), name: "Restoran"),
                            ),

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