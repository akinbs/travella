import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travella_01/profile_page/favoriler.dart';

import 'package:travella_01/profile_page/yorumlar.dart';

class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 900,
        child: Container(
          height: 900,
          width: 411,
          child: Scaffold(
            extendBody: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 0,
               
              bottom: const TabBar(
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black,
               
      
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    text: ("FAVORİLER"),
                  ),
                  Tab(
                      icon: Icon(
                        Icons.comment,
                        color: Colors.blue,
                      ),
                      text: ("YORUMLARIM")),
                      
                ],
                
              ),
              
            ),
            
            body: Container(
              child: TabBarView(
                children: [
                  const favoriler(),
                  yorumlar(),
                ],
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
