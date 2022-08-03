import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants.dart';



class ReviewUI extends StatefulWidget {
  final String image, name, date, comment;
  final double rating;
  bool isLess;
  bool isFavorite;


  ReviewUI({
    Key? key,
    required this.image,
    required this.name,
    required this.date,
    required this.comment,
    required this.rating,
    required this.isLess,
    required this.isFavorite,
  }) : super(key: key);

  @override
  State<ReviewUI> createState() => _ReviewUIState();
}

class _ReviewUIState extends State<ReviewUI> {



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(color: Colors.grey.shade300))
      ),
      padding: EdgeInsets.only(
        bottom: 2.0,
        left: 13.0,
        right: 0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 45.0,
                width: 45.0,
                margin: EdgeInsets.only(
                  right: 13.0,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(44.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        glow: false,
                        initialRating: widget.rating,
                        minRating: widget.rating,
                        //eğer bunlara initial rating değerini verirsem sabit bir rating bar elde ediyorum.
                        maxRating: widget.rating,
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
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "${widget.rating.toString()}/5.0",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 58, top: defaultPadding, right: 30),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    return  setState(() {widget.isLess = !widget.isLess;});
                  },
                  child: widget.isLess
                      ? Text(
                          widget.comment,
                          style: defaultTextStyle(),
                        )
                      : Text(
                          widget.comment,
                          maxLines: 4,
                          overflow: TextOverflow.fade,
                          style: defaultTextStyle(),
                        ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 45,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  alignment: Alignment.center,
                  onPressed:  () {
                    setState(() {
                      widget.isFavorite = !widget.isFavorite;
                    });
                  },
                  icon: widget.isFavorite ?
                      Icon(Icons.favorite,color: Colors.red,):
                      Icon(
                    Icons.favorite,
                    color: Colors.grey.shade400,
                  ),
                ),
                Text(
                  widget.date,
                  style: defaultTextStyle(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
