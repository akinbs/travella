import 'package:flutter/material.dart';

class AppBarBackgroundImage extends StatelessWidget {
  const AppBarBackgroundImage({
    Key? key,
    required this.assetImages,
  }) : super(key: key);

  final List<String> assetImages;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetImages.last,
      width: double.maxFinite,
      fit: BoxFit.cover,
    );
  }
}