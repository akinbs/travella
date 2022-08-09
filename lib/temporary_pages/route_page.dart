import 'package:flutter/material.dart';
import 'package:travella_01/data/route_categories_item.dart';
import 'package:travella_01/data/strings.dart';
import 'package:travella_01/models/rota.dart';

class RoutePage extends StatelessWidget {
  late List<Rota> TumRotaKategorileri = [];

  RoutePage() {
    TumRotaKategorileri = Veri();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.4,
                image: AssetImage("assets/images/duzce_5.jpg"))),
        child: Center(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
              ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return RouteCategoriesItem(gosterilenRota: TumRotaKategorileri[index]);
            },
          )
        ),
      ),
    );
  }
}

List<Rota> Veri() {
  List<Rota> temp = [];
  for (int i = 0; i < 9; i++,) {
    var fotolar = Strings.Rotalar[i];
    var routeCategory = _routeCategories[i];
    Rota eklenenRotaNesneleri = Rota(fotolar, routeCategory);
    temp.add(eklenenRotaNesneleri);
  }
  return temp;
}
const List<String> _routeCategories = [
  "Doğa ve Tarih Rotaları",
  "Doğa ve Yayla Rotaları",
  "Tarih ve İnanç Rotaları",
  "Tarih ve Plaj Rotaları",
  "Tarih ve Yayla Rotaları",
  "Yayla ve İnanç Rotaları",
  "Yayla ve Deniz Rotaları",
  "Deniz ve İnanç Rotaları",
  "Doğa ve Deniz Rotaları",
  "Doğa ve Tarih Rotaları",
];