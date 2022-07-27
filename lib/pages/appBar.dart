import 'package:flutter/material.dart';

class AppBarLayout extends StatefulWidget implements PreferredSizeWidget {
  AppBarLayout({Key? key}) : super(key: key);

  @override
  State<AppBarLayout> createState() => _AppBarLayoutState();

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class _AppBarLayoutState extends State<AppBarLayout> {
  /*filtreleme iconunu böyle yapmamın sebebi daha sonra filtrelendi 
    ya da filtrelenmedi diye ayırt etmek için daha sonrasında if else ile yapılabilir*/
  var filterIcon = Icon(Icons.filter_alt_outlined);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      elevation: 5,
      centerTitle: true,
      actions: [
        IconButton(
          icon: filterIcon,
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(69, 0, 0, 0),
            Color.fromARGB(1, 255, 255, 255)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
      title: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'Yakınlarda',
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 56, 56, 56)),
            children: <TextSpan>[
              TextSpan(
                text: '\nEtrafında 3 Alan Var',
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ]),
      ),
    );
  }
}
