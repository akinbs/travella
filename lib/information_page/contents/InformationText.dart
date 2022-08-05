import 'package:flutter/material.dart';
import '../../data/strings.dart';
import '../constants.dart';




class InformationText extends StatelessWidget {
  final String locationName;
  const InformationText({Key? key, required this.locationName,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 1.5, defaultPadding, 0),
      child: Text(
        Strings.informationTexts[locationName]!,
        style: defaultTextStyle(),),
         
    );
  }
}