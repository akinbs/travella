import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';


//---------------------------------Rating Bar-----------------------------------

RatingBar buildRatingBar() {

  return RatingBar.builder(
    glow: false,
    initialRating: 4.2,
    minRating: 4.2, //eğer bunlara initial rating değerini verirsem sabit bir rating bar elde ediyorum.
    maxRating: 4.2,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemSize: 20,
    itemPadding: EdgeInsets.symmetric(horizontal: 1.7),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: mainColor,
    ),
    onRatingUpdate: (rating) {},
  );
}