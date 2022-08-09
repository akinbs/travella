import 'package:flutter/material.dart';
import 'package:travella_01/data/rote_strings.dart';
import 'package:travella_01/information_page/constants.dart';

import '../google_maps/routes/order_traking_page.dart';

class RouteItem extends StatelessWidget {
  final String routeCategory;
  int index;
  RouteItem({required this.routeCategory, Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      child: Column(
        children: [
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.35,
              width: double.infinity,
              child: Text("asda"),
            ),
          )
        ],
      ),
    );
  }
}
//RouteStrings.routeNames[routeCategory]![index],
/*
image: DecorationImage(
            image: AssetImage("assets/images/doğa.jpg"), //AssetImage(RouteStrings.routePictures[routeCategory]!),
            fit: BoxFit.cover,
            opacity: 1),
 */