import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foto extends StatelessWidget {
  const foto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 46, 222, 51),
          radius: 65,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90), 
                color: Colors.green),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(foregroundColor: Colors.red,
                radius: 60,
                backgroundImage:
                    AssetImage("assets/images/fehmi.jpg"),
                backgroundColor: Color.fromARGB(255, 49, 250, 55),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 1,
            right: 1,
            child: InkWell(
              onTap: () {},
              focusColor: Colors.red,
              child: Icon(
                Icons.photo_camera,shadows: [Shadow(color: Colors.green)],
                size: 37,
                color: Colors.green,
              ),
            )
            ,)
      ]),
    );
  }
}
