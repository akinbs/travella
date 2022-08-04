
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../constants.dart';

class CreateNewReviewUI extends StatefulWidget {
  const CreateNewReviewUI({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateNewReviewUI> createState() => _CreateNewReviewUIState();
}

class _CreateNewReviewUIState extends State<CreateNewReviewUI> {
  double rating = 0;
  final TextEditingController _textEditingController = TextEditingController();

  bool isReviewPostable = false;

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

  void postTheReview(){
    setState(() {
    _textEditingController.notifyListeners();
      rating = 0;
    });
    _textEditingController.text = "";


  }

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
            glowRadius: 1,
            initialRating: 0,
            minRating: 1, //eğer bunlara initial rating değerini verirsem sabit bir rating bar elde ediyorum.
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
            controller: _textEditingController,
            minLines: 3,
            maxLines: 5,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: "Burayı beğendiniz mi?",
              hintStyle: defaultTextStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
              )
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