import 'package:flutter/material.dart';
import '../information_page/information_page.dart';
import '../models/mekan.dart';

class mekanItem extends StatelessWidget {
  final Mekan listelenenMekan;

  const mekanItem({required this.listelenenMekan, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Text_style = Theme.of(context).textTheme.headline6;
    return Container(
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(listelenenMekan.kucukResim),
            fit: BoxFit.cover,
            opacity: 0.8),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Card(
          color: Colors.transparent,
          semanticContainer: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            contentPadding: EdgeInsets.all(20),
            title: Text(
              listelenenMekan.mekanIsmi,
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
            ),
            subtitle: Text(
              listelenenMekan.mekan_turu,
              style: TextStyle(
                  color: Color.fromARGB(255, 182, 223, 142), fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 196, 199, 196),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => InformationPage(
                        selectedPlace: listelenenMekan,
                      )));
            },
          )),
    );
  }
}
