
import 'package:flutter/material.dart';

import '../google_maps/routes/order_traking_page.dart';

class ROTALAR extends StatefulWidget {
  ROTALAR({Key? key}) : super(key: key);

  @override
  State<ROTALAR> createState() => _ROTALARState();
}

class _ROTALARState extends State<ROTALAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("Örnek Rota Sayfası"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderTrackingPage(),));
          },
        ),
      ),
    );
  } 
}