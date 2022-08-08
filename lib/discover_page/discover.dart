import 'package:flutter/material.dart';
import 'package:travella_01/data/mekan_item.dart';
import 'package:travella_01/data/strings.dart';

import '../models/mekan.dart';

class Discover extends StatelessWidget {
  late List<Mekan> tumMekanlar = [];

  Discover() {
    tumMekanlar = veriKaynagi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return mekanItem(
              listelenenMekan: tumMekanlar[index],
            );
          },
          itemCount: tumMekanlar.length,
        ),
      )
    );
  }

  List<Mekan> veriKaynagi() {
    List<Mekan> gecici = [];

    Mekan.Tur_values.addAll(Strings.Turizm_turu.values);
    for (int i = 0; i < 35; i++) {
      var mekanAdi = Strings.mekan_adlari[i];
      var mekanTuru = Mekan.Tur_values[i];
      var mekanKucukResim = "assets/images/${Strings.kucukResim[i]}.png";

      Mekan eklenecekMekan = Mekan(
        mekanAdi,
        mekanTuru,
        mekanKucukResim,
      );
      gecici.add(eklenecekMekan);
    }
    return gecici;
  }
}

