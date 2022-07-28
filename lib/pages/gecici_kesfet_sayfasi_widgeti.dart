import 'package:flutter/material.dart';

import '../google_maps/order_traking_page.dart';


class AnaSayfaCenterWidget extends StatelessWidget {
  const AnaSayfaCenterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          TextButton(
              onPressed:() {
            haritayaGit(context);

          }, child: Text("harita sayfası")),
          Text("keşfet  sayfası"),
        ],
      ),
    );
  }
}
void haritayaGit (BuildContext context) async {
  await Navigator.of(context).push(MaterialPageRoute(
    builder: (context) {
      return const OrderTrackingPage();
    },
  ));
}
