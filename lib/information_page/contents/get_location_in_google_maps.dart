import 'package:flutter/material.dart';


class GetLocationInGoogleMaps extends StatelessWidget {
  const GetLocationInGoogleMaps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Haritada konum gösterilecek")),
    );
  }
}