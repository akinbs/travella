


import 'package:flutter/material.dart';
import 'package:travella_01/profile_page/favoriler.dart';

import 'package:travella_01/profile_page/yorumlar.dart';

class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: 411,
              child: Container(
              
                child: Scaffold(
                  extendBody: true,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    toolbarHeight: 0,
                    bottom: const TabBar(
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.black,
                      isScrollable: false,//TABBAR GÖRÜNÜMÜ
                        
                      tabs: [

                        Tab(
                          icon: Icon(Icons.star,color: Colors.amber,),
                          text: ("FAVORİLER"),
                        ),
                        Tab(icon: Icon(Icons.comment,color: Colors.blue,), text: ("YORUMLARIM")),
                      ],
                    ),
                  ),
                  body: Container(
                    
                   
                    child: TabBarView(
                    
                      children: [
                        favoriler(),
                        yorumlar(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
