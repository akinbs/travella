import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foto extends StatelessWidget {
  const foto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Stack(children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 65,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90), color: Colors.green),
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  foregroundColor: Colors.red,
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/fehmi.jpg"),
                  backgroundColor: Colors.teal,
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
                Icons.photo_camera,
                shadows: [Shadow(color: Colors.green)],
                size: 37,
                color: Colors.teal,
              ),
            ),
          )
        ]
        ),
      ),
    );
  }
}
