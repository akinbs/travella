import 'package:flutter/material.dart';
import 'package:travella_01/data/strings.dart';

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
      Strings.appBarBackgroundImages[locationName]!,
      width: double.maxFinite,
      fit: BoxFit.cover,
    );
  }
}