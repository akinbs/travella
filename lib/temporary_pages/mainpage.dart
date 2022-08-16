import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travella_01/data/strings.dart';
import 'package:travella_01/information_page/constants.dart';
import 'package:travella_01/information_page/information_page.dart';
import 'package:travella_01/models/%C3%B6nerilen_model.dart';
import 'package:travella_01/models/CustomTabInd%C4%B1cator.dart';
import 'package:travella_01/models/populars.dart';

import '../models/mekan.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _PageController = PageController(viewportFraction: 0.877);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      extendBodyBehindAppBar: true,
      body:SafeArea(
        child:Container(
          child:ListView( 
            physics: BouncingScrollPhysics(), 
            children: <Widget> [ 
              Padding(padding: EdgeInsets.only(top:20,left:28.8),
              child: Text("Keşfetmeye Başla",
              style:GoogleFonts.raleway(fontSize:38,fontWeight: FontWeight.w400,color: Colors.orange.shade700 ),
              ),
              ),
              Container(
                height: 30,
                margin:EdgeInsets.only(left: 14.4, top:28.8), 
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    indicator:  CustomTabIndicator(),
                    labelPadding: EdgeInsets.only(left:14.4,right: 14.4),
                    indicatorPadding:EdgeInsets.only(left:14.4,right: 14.4) ,
                    isScrollable: true, 
                    labelColor: mainColor, 
                    unselectedLabelColor:Colors.grey.shade700,
                    labelStyle: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ), 
                    unselectedLabelStyle:  GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    
                    tabs: [
                      Tab(
                        child: Container( 
                          child: Text( "Önerilenler"),
                        ),
                      ), 
                      Tab(
                        child: Container( 
                          child: Text( "Popüler"),
                        ),
                      ),
                      Tab(
                        child: Container( 
                          child: Text( "Yeni Rotalar"),
                        ),
                      ),
                      Tab(
                        child: Container( 
                          child: Text("Yakınındakiler"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top:16),              
                child:PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _PageController, 
                  scrollDirection: Axis.horizontal, 
                  children: List.generate(onerilenler.length, (int index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: ((context) => InformationPage(
                        selectedPlace: Mekan(onerilenler[index].name,"adadda","asdadsa"),
                      )
                        
                      )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 28.8), 
                    width: 333.6, 
                    height: 218.4, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(image: AssetImage(onerilenler[index].image),fit: BoxFit.cover)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(bottom: 19.2,left: 19.2,
                          child: ClipRRect(borderRadius: BorderRadius.circular(4.8),child:BackdropFilter(filter: ImageFilter.blur( 
                          sigmaX: 19.2,
                          sigmaY: 19.2,
                        ),
                        child: Container(
                          height: 36,
                          padding: EdgeInsets.only(left:16.72,right: 14.4),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.location_on_rounded,color: Colors.lime.shade500,),
                              SizedBox(width: 9.52,),
                              Text(onerilenler[index].name+", Düzce",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 16.8,)
                              ),
                              
                  
                            ],
                          ),
                        ),
                        ),
                        )
                        )
                      ],
                    ),
                    ),
                  )),
                ),
                ),
              Padding(padding: EdgeInsets.only(left:28.8,top:28.8),
              child: SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                  activeDotColor: mainColor,
                  dotColor: Colors.grey,
                  dotHeight: 4.8,
                  dotWidth: 6,
                  spacing: 4.8,
                ),
                controller:_PageController , 
                count: onerilenler.length,),),
              Padding(
                padding:EdgeInsets.only(top:48,left:28.8,right: 28.8),  
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget> [
                    Text("Popüler Kategoriler", 
                    style: GoogleFonts.raleway(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange.shade700,
                    ),),
                    Text("Tümü", 
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 16.8,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                    ),),
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.only(top: 33.6), 
                height: 45.6,
                child: ListView.builder(
                  itemCount: onermeler.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left:28.8,right:9.6),
                  itemBuilder:(context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 19.2),
                      height: 45.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          
                          SizedBox(
                            width: 19.2,
                          ),
                          IconButton(icon:(onermeler[index].ikon),
                          onPressed:() {                            
                          },),
                          SizedBox(
                            width: 19.2,
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin:EdgeInsets.only(top:28.8,bottom: 16.8),
                height: 124.8,
                child: ListView.builder(
                  itemCount: Strings.dogadenizrotasi1.length, 
                  padding: EdgeInsets.only(left: 28.8,right: 12), 
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(), 
                  itemBuilder: ((context, index) { 
                    return Container(
                      height: 124.8,
                      width: 188.4,
                      margin: EdgeInsets.only(right: 16.8), 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        //ZEVKLERE GÖRE OLUŞUCAK LİSTE
                        image: DecorationImage(fit: BoxFit.cover, 
                        image: AssetImage("assets/images/"+Strings.dogadenizrotasi1[index]+".png"),

                        ),
                      ),
                    );
                    
                  }),
                 
                 ), 
                
              ),
            
            
            ],

          ),
        ) ,)
    );
  }
}