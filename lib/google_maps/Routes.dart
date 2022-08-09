
import 'package:flutter/material.dart';
import 'package:travella_01/data/rote_strings.dart';
import 'package:travella_01/data/route_item.dart';
import 'package:travella_01/information_page/constants.dart';

class Routes extends StatefulWidget {
  String routeCategory;
  Routes({
    required this.routeCategory,
    Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.routeCategory,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainColor,
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return RouteItem(
              routeCategory: widget.routeCategory,
              index: index,
            );
          },
          itemCount: RouteStrings.routeNames[widget.routeCategory]!.length,
        ),
      )
    );
  } 
}

/*
Center(
        child: TextButton(
          child: Text("Örnek Rota Sayfası"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderTrackingPage(),));
          },
        ),
      ),
 */