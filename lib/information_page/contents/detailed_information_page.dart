import 'package:flutter/material.dart';


import '../../data/strings.dart';
import '../constants.dart';



class DetailedInformationText extends StatelessWidget {
  final String? locationName ;
   const DetailedInformationText({
    Key? key,  this.locationName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.detailedInformationTexts[locationName]!,
style: defaultTextStyle(),);
  }
}


