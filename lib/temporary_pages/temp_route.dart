import 'package:flutter/material.dart';
import 'package:travella_01/google_maps/routes/order_traking_page.dart';

class temp_route extends StatelessWidget {
  const temp_route({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Center(
        child:Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderTrackingPage(),));
                  },
                  child: Text("Doğa ve Tarih Turizmi Rotası 1"))
              ],
            ),
          ),
        ),)
    );
  }
}