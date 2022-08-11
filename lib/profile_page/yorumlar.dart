
import 'package:flutter/material.dart';
import 'package:travella_01/discover_page/discover.dart';

import '../temporary_pages/route_page.dart';
class yorumlar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 900,
      child: SingleChildScrollView(child:
                 Column(
                   children: [
                     Card(
                      child: Column(
                        children: <Widget>[const ListTile(
                          leading: Icon(Icons.comment,size:40 ,color: Colors.blue, ),
                          
                          title: Text("Akçakoca Merkez Camii"),
                          subtitle: Text(" Tasarımıyla göz uçuran bu camii düzcenin en güzel camilerinden biri."),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                           onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                             child: const Text("Gezi Noktasına Git",style:TextStyle( color: Colors.green,)),
                             
                             ),
                             const SizedBox(width: 12,),
                             
                        ],
                       )
                        ]
                        ),
                     ),
                     Card(
                      child: Column(
                        children: <Widget>[const ListTile(
                          leading: Icon(Icons.comment,size:40 ,color: Colors.blue, ),
                          
                          title: Text("GüzelDere Şelalesi"),
                          subtitle: Text(" Düzcede gördüğüm ve sanki cennetten bir mekanmış hissi uyandıran bu şelaleye bayıldım..."),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                           onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                             child: const Text("Gezi Noktasına Git",style:TextStyle( color: Colors.green,)),
                             
                             ),
                             const SizedBox(width: 12,),
                             
                        ],
                       )
                        ]
                        ),
                     ),
                     Card(
                      child: Column(
                        children: <Widget>[const ListTile(
                          leading: Icon(Icons.comment,size:40 ,color: Colors.blue, ),
                          
                          title: Text("Topuk Yaylası"),
                          subtitle: Text(" Türkiye'de harika doğası olan harika yerlerden biri. Şansım olursa burayı ailemle tekrar ziyaret etmek isterim."),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                             child: const Text("Gezi Noktasına Git",style:TextStyle( color: Colors.green,)),
                             
                             ),
                             const SizedBox(width: 12,),
                             
                        ],
                       )
                        ]
                        ),
                     ),Card(
                      child: Column(
                        children: <Widget>[const ListTile(
                          leading: Icon(Icons.comment,size:40 ,color: Colors.blue, ),
                          
                          title: Text("AydınPınar Şelalesi"),
                          subtitle: Text(" Mangal yapmak için on numara mekan. Sessiz ve sakin bir mekan..."),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                             child: const Text("Gezi Noktasına Git",style:TextStyle( color: Colors.green,)),
                             
                             ),
                             const SizedBox(width: 12,),
                             
                        ],
                       )
                        ]
                        ),
                     ),
                     Card(
                      child: Column(
                        children: <Widget>[const ListTile(
                          leading: Icon(Icons.comment,size:40 ,color: Colors.blue, ),
                          
                          title: Text("Orhan Gazi Mahallesi Merkez Camii "),
                          subtitle: Text(" Düzce Üniversitesine çok yakın olmakla beraber temiz ve bakımlı bir camii."),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                          onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                             child: const Text("Gezi Noktasına Git",style:TextStyle( color: Colors.green,)),
                             
                             ),
                             const SizedBox(width: 12,),
                             
                        ],
                       )
                        ]
                        ),
                     ),
                     Card(
                      child: Column(
                        children: <Widget>[const ListTile(
                          leading: Icon(Icons.comment,size:40 ,color: Colors.blue, ),
                          
                          title: Text("Ceneviz Kalesi"),
                          subtitle: Text(" Düzcede gittiğim ilk mağaraydı.İçerisi oldukça ürperticiydi..."),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                             child: const Text("Gezi Noktasına Git",style:TextStyle( color: Colors.green,)),
                             
                             ),
                             const SizedBox(height: 50,),
                             
                        ],
                       )
                        ]
                        ),
                     ),
                   ],
                 ),
                 
                 ),
    );
  }
}