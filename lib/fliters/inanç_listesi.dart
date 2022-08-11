import 'package:flutter/material.dart';
import 'package:travella_01/data/mekan_item.dart';
import 'package:travella_01/data/strings.dart';

import '../models/mekan.dart';

class InancListesi extends StatelessWidget {
  late List<Mekan> tumMekanlar = [];

  InancListesi() {
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
            itemCount: MekanAdlari.length,
          ),
        )
    );
  }

  List<Mekan> veriKaynagi() {
    List<Mekan> gecici = [];

    for (int i = 0; i < MekanAdlari.length; i++) {
      var mekanAdi = MekanAdlari[i];
      var mekanKucukResim = "assets/images/${_kucukResim[i]}.png";

      Mekan eklenecekMekan = Mekan(
        mekanAdi,
        Strings.Turizm_turu[MekanAdlari[i]]!,
        mekanKucukResim,
      );
      gecici.add(eklenecekMekan);
    }
    return gecici;
  }
  static const List<String> MekanAdlari = [
    "Akçakoca Merkez Cami",
    "Cumayeri Yeni Cami",
    "Hemşin Köyü Cami",
    "Karaçalı Orhangazi Cuma Cami",
    "Organ Gazi Cami",
    "Yeni Meze Cami",
    "Ahmet Dede Türbesi",
    "Hasan Dede Türbesi",
    "Konuralp Türbesi",
    "Yabal Dede Türbesi",
  ];
  static const List<String> _kucukResim = [
    "Akçakoca_Merkez_Cami",
    "Cumayeri_Yeni_Cami",
    "Hemşin_Köyü_Cami",
    "Karaçalı_Orhangazi_Cuma_Cami",
    "Organ_Gazi_Cami",
    "Yeni_Meze_Cami",
    "Ahmet_Dede_Türbesi",
    "Hasan_Dede_Türbesi",
    "Konuralp_Türbesi",
    "Yabal_Dede_Türbesi",
  ];
}

