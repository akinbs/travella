import 'package:flutter/material.dart';
import 'package:travella_01/data/mekan_item.dart';
import 'package:travella_01/data/strings.dart';

import '../models/mekan.dart';

class TarihListesi extends StatelessWidget {
  late List<Mekan> tumMekanlar = [];

  TarihListesi() {
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
            itemCount: TarihMekanAdlari.length,
          ),
        )
    );
  }

  List<Mekan> veriKaynagi() {
    List<Mekan> gecici = [];

    for (int i = 0; i < 3; i++) {
      var mekanAdi = TarihMekanAdlari[i];
      var mekanKucukResim = "assets/images/${_kucukResim[i]}.png";

      Mekan eklenecekMekan = Mekan(
        mekanAdi,
        Strings.Turizm_turu[TarihMekanAdlari[i]]!,
        mekanKucukResim,
      );
      gecici.add(eklenecekMekan);
    }
    return gecici;
  }
  static const List<String> TarihMekanAdlari = [
    "Konuralp Antik Tiyatro",
    "Mehmet Akif Bey Köşkü",
    "Roma Köprüsü",
  ];
  static const List<String> _kucukResim = [
    "Konuralp_Antik_Tiyatro",
    "Mehmet_Akif_Bey_Köşkü",
    "Roma_Köprüsü",
  ];
}

