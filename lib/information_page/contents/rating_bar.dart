
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../constants.dart';


//---------------------------------Rating Bar-----------------------------------

 SmoothStarRating buildRatingBar(double rateValue) {

  return SmoothStarRating(
      allowHalfRating: true,

      onRatingChanged: (v) {
        //widget.rating = v;
        //setState(() {});
      },
      starCount: 5,
      rating: rateValue, //bu değer çekilecek
      size: 20.0,
      filledIconData: Icons.star_sharp,
      halfFilledIconData: Icons.star,
      color: mainColor,
      borderColor: mainColor,
      spacing:0.0
  );
}