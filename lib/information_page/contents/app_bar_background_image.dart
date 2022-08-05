import 'package:flutter/material.dart';

class AppBarBackgroundImage extends StatelessWidget {
  final String locationName;
  const AppBarBackgroundImage({
    Key? key,
    required this.assetImage, required this.locationName,
  }) : super(key: key);

  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/saklikent-selalesi_3.jfif",
      width: double.maxFinite,
      fit: BoxFit.cover,
    );
  }
}