import 'package:flutter/material.dart';
import 'package:travella_01/data/route_strings.dart';
import 'package:travella_01/information_page/constants.dart';

class RouteItem extends StatelessWidget {
  final String routeCategory;
  int index;

  RouteItem({required this.routeCategory, Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      child: Column(
        children: [
          Card(
            color: mainColor,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultBorderRadius)),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RouteStrings.routePages[routeCategory]![index],
                ));
              },
              child: Column(
                children: [
                  Ink.image(
                    height: 250,
                    fit: BoxFit.cover,
                    image: AssetImage(
                        RouteStrings.routeBackgroudImages[routeCategory]![
                            RouteStrings.routeNames[routeCategory]![index]]!),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          child: Text(
                            RouteStrings.routeNames[routeCategory]![index],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//RouteStrings.routeNames[routeCategory]![index],
/*
image: DecorationImage(
            image: AssetImage("assets/images/doğa.jpg"), //AssetImage(RouteStrings.routePictures[routeCategory]!),
            fit: BoxFit.cover,
            opacity: 1),
 */
/*
Container(
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius),
                topRight: Radius.circular(defaultBorderRadius))
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: Image.asset(
                "assets/images/Efteni_Gölü_1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
 */
/*
Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(
                      defaultPadding, 0, 0, defaultPadding),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(
                          defaultBorderRadius),
                    ),
                    child: Text(
                      "${Strings.informationPictures[widget.selectedPlace.mekanIsmi]!.length} Fotoğraf",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
 */
