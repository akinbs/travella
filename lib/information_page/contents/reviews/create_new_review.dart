
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travella_01/information_page/contents/reviews/reviewUI.dart';
import 'package:travella_01/information_page/contents/reviews/reviews.dart';
import 'package:travella_01/information_page/information_page.dart';
import '../../constants.dart';

class CreateNewReviewUI extends StatefulWidget {
  const CreateNewReviewUI({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateNewReviewUI> createState() => _CreateNewReviewUIState();
}

class _CreateNewReviewUIState extends State<CreateNewReviewUI> {

  final formKey = GlobalKey<FormState>();
  double rating = 0;
  final TextEditingController _textEditingController = TextEditingController();
  bool isReviewPostable = false;

//------------------------------------------------------------------------------

  isReviewPostableCheck(){
    if(_textEditingController.text == "" || rating == 0){
      setState(() {
        isReviewPostable = false;
      });
    }else{
      setState(() {
        isReviewPostable = true;
      });
    }
  }

//------------------------------------------------------------------------------
  void postTheReview(){

    ReviewUI review = ReviewUI(
      image: "assets/images/melih_emre_guler.jpeg",
      name: "Username",
      date: "05/08/2022",
      comment: _textEditingController.text,
      rating: rating,
      isFavorite: false,
      likesNumber: 0);

    setState(() {
      reviews.add(review);
    });

    setState(() {
      rating = 0;
    });
    _textEditingController.text = "";
    setState(() {
      isReviewPostableCheck(); // en son butonun geri gri renge dönmesi için
    });
    final snackBar = SnackBar(
      content: Text(
        "Yorum Gönderildi.",
        style: TextStyle(fontSize: 18, color: Colors.grey.shade800),
      ),
      backgroundColor: mainColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    FocusScope.of(context).unfocus(); //klavyenin kapanması için

    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  InformationPage(
      googleMapsUrl: "https://goo.gl/maps/ERmVvVrKufAL6gkK6",
      rateValue: 1,
      header: "Saklıkent Şelalesi",
      appBarBackgroundImage: "assets/images/saklikent-selalesi_3.jfif",
      galleryPhoto1: "assets/images/saklikent_selalesi_1.jpg",
      galleryPhoto2: "assets/images/saklikent_selalesi_2.jpg",
      galleryPhoto3: "assets/images/saklikent-selalesi_3.jfif",
      latitude: 40.9407589,
      longitude: 31.4908345,
    ),));
  }

//------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
            horizontal:
            BorderSide(color: Colors.grey.shade300)),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          bottom: defaultPadding,
          top: defaultPadding),
      child: Column(
        children: [
          Text(
            "Burayı aşağıdan puanlayabilir ve yorum yazabilirsin",
            style: TextStyle(
                fontSize: 17,
                height: 1.3,
                color: Colors.black),
          ),
          SizedBox(height: defaultPadding,),
          RatingBar.builder(
            updateOnDrag: true,
            glow: true,
            glowRadius: 1.0,
            initialRating: 0,
            minRating: 1,
            maxRating: 5,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemSize: 43,
            itemPadding: EdgeInsets.symmetric(horizontal: 1.7),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: mainColor,
            ),
            onRatingUpdate: (rating) {
              setState(() {
                this.rating = rating;
                isReviewPostableCheck();
              });
            },
          ),
          SizedBox(height: defaultPadding/3,),
          Text(
            "Puan: ${rating}",
            style: TextStyle(
                fontSize: 17,
                height: 1.3,
                color: Colors.black),
          ),
          SizedBox(height: defaultPadding,),
          TextFormField(
            onChanged:(value) {
              isReviewPostableCheck();
            },
            key: formKey,
            controller: _textEditingController,
            minLines: 3,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: "Burayı beğendiniz mi?",
              hintStyle: defaultTextStyle(),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                borderSide: BorderSide(color: mainColor,),
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),
          ElevatedButton(
            onPressed: isReviewPostable ? postTheReview : null,
            style: ElevatedButton.styleFrom(
              primary: isReviewPostable ?
              mainColor : Colors.grey.shade400,
              shape: StadiumBorder(),
            ),
            child: Text(
              "Gönder",
              style: TextStyle(
                fontSize: 23,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}