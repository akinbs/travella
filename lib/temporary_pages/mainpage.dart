import 'package:flutter/material.dart';

import '../models/mekan.dart';

class main_page extends StatelessWidget {
  
  const main_page({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , ),
    itemCount: 100,
    itemBuilder: (BuildContext context, index){ 
      return Container( 
        decoration: BoxDecoration( 
        
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
        child: Card(  
          child: ListTile( 
            
          ),

        ),
      );
    }  
    );
  
    
  }
}