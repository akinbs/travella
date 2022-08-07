import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../data/strings.dart';
import '../constants.dart';



class GalleryWidget extends StatefulWidget {
  final String selectedLocation;
  final PageController pageController;

  GalleryWidget({
    required this.selectedLocation,
  }) : pageController = PageController(initialPage: 0) ;

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        PhotoViewGallery.builder(
          pageController: widget.pageController,
          //scrollDirection: Axis.vertical,
          itemCount: Strings.informationPictures[widget.selectedLocation]!.length, //buraya firebase için değişiklik yapılacak
          builder:(context, index) {

            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(Strings.informationPictures[widget.selectedLocation]![index]), //NetworkImage ile değiştirilebilir.
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.contained * 4, //maksimum 4x zoom a izin veriyoruz.
            );
          },
          onPageChanged: (index) => setState(() {
            this.index = index;
          }),
        ),
        Container(
          padding: EdgeInsets.all(defaultPadding),
          child: DefaultTextStyle(
            style: TextStyle(color: Colors.white, fontSize: 25),
            child: Text(
              "Fotoğraf ${index + 1}/${Strings.informationPictures[widget.selectedLocation]!.length}", //bu değer de değişecek

            ),
          ),
        ),
      ],
    );

  }
}
