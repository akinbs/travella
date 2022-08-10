import 'package:flutter/material.dart';
import 'package:travella_01/google_maps/routes/doga_ve_tarih_rotasi_1_page.dart';

import '../google_maps/routes/deniz_ve_inanc_rotasi_1_page.dart';
import '../google_maps/routes/deniz_ve_inanc_rotasi_2_page.dart';
import '../google_maps/routes/deniz_ve_inanc_rotasi_3_page.dart';
import '../google_maps/routes/doga_ve_deniz_rotasi_1_page.dart';
import '../google_maps/routes/doga_ve_deniz_rotasi_2_page.dart';
import '../google_maps/routes/doga_ve_deniz_rotasi_3_page.dart';
import '../google_maps/routes/doga_ve_tarih_rotasi_2_page.dart';
import '../google_maps/routes/doga_ve_tarih_rotasi_3_page.dart';
import '../google_maps/routes/doga_ve_yayla_rotasi_1_page.dart';
import '../google_maps/routes/doga_ve_yayla_rotasi_2_page.dart';
import '../google_maps/routes/doga_ve_yayla_rotasi_3_page.dart';
import '../google_maps/routes/tarih_ve_inanc_rotasi_1_page.dart';
import '../google_maps/routes/tarih_ve_inanc_rotasi_2_page.dart';
import '../google_maps/routes/tarih_ve_inanc_rotasi_3_page.dart';
import '../google_maps/routes/tarih_ve_plaj_rotasi_1_page.dart';
import '../google_maps/routes/tarih_ve_plaj_rotasi_2_page.dart';
import '../google_maps/routes/tarih_ve_yayla_rotasi_1_page.dart';
import '../google_maps/routes/tarih_ve_yayla_rotasi_2_page.dart';
import '../google_maps/routes/tarih_ve_yayla_rotasi_3_page.dart';
import '../google_maps/routes/yayla_ve_deniz_rotasi_1_page.dart';
import '../google_maps/routes/yayla_ve_deniz_rotasi_2_page.dart';
import '../google_maps/routes/yayla_ve_deniz_rotasi_3_page.dart';
import '../google_maps/routes/yayla_ve_inanc_rotasi_1_page.dart';
import '../google_maps/routes/yayla_ve_inanc_rotasi_2_page.dart';
import '../google_maps/routes/yayla_ve_inanc_rotasi_3_page.dart';

class RouteStrings {

  static const Map<String, List<String>> routeNames= {
    "Doğa ve Tarih Rotaları" : [
      "1. Doğa ve Tarih Rotası",
      "2. Doğa ve Tarih Rotası",
      "3. Doğa ve Tarih Rotası",
    ],
    "Doğa ve Yayla Rotaları" : [
      "1. Doğa ve Yayla Rotası",
      "2. Doğa ve Yayla Rotası",
      "3. Doğa ve Yayla Rotası",
    ],
    "Tarih ve İnanç Rotaları" : [
      "1. Tarih ve İnanç Rotası",
      "2. Tarih ve İnanç Rotası",
      "3. Tarih ve İnanç Rotası",
    ],
    "Tarih ve Plaj Rotaları" : [
      "1. Tarih ve Plaj Rotası",
      "2. Tarih ve Plaj Rotası",
    ],
    "Tarih ve Yayla Rotaları" : [
      "1. Tarih ve Yayla Rotası",
      "2. Tarih ve Yayla Rotası",
      "3. Tarih ve Yayla Rotası"
    ],
    "Yayla ve İnanç Rotaları" : [
      "1. Yayla ve İnanç Rotası",
      "2. Yayla ve İnanç Rotası",
      "3. Yayla ve İnanç Rotası",
    ],
    "Yayla ve Deniz Rotaları" : [
      "1. Yayla ve Deniz Rotası",
      "2. Yayla ve Deniz Rotası",
      //"3. Yayla ve Deniz Rotası",
    ],
    "Deniz ve İnanç Rotaları" : [
      "1. Deniz ve İnanç Rotası",
      "2. Deniz ve İnanç Rotası",
      "3. Deniz ve İnanç Rotası",
    ],
    "Doğa ve Deniz Rotaları" : [
      "1. Doğa ve Deniz Rotası",
      "2. Doğa ve Deniz Rotası",
      "3. Doğa ve Deniz Rotası",
    ],
  };
  static const Map<String, Map<String,String>> routeBackgroudImages = {
    "Doğa ve Tarih Rotaları" : {
      "1. Doğa ve Tarih Rotası": "assets/images/Aydinpinar_Selalesi_1.jpg",
      "2. Doğa ve Tarih Rotası": "assets/images/Fakıllı_Mağrasi_1.jpg",
      "3. Doğa ve Tarih Rotası": "assets/images/Samandere_Şelalesi_1.jpg",
    },
    "Doğa ve Yayla Rotaları" : {
      "1. Doğa ve Yayla Rotası" : "assets/images/Guzeldere_Selalesi_1.jpg",
      "2. Doğa ve Yayla Rotası" : "assets/images/Torkul_Yaylasi_ve_Goleti_1.jpg",
      "3. Doğa ve Yayla Rotası" : "assets/images/Topuk_Yaylasi_Ve_Goleti_1.jpg",
    },
    "Tarih ve İnanç Rotaları" : {
      "1. Tarih ve İnanç Rotası" : "assets/images/Karaçalı_Orhangazi_Cuma_Cami.png",
      "2. Tarih ve İnanç Rotası" : "assets/images/Cumayeri_Yeni_Cami_2.png",
      "3. Tarih ve İnanç Rotası" : "assets/images/Mehmet_Akif_Bey_Kosku_1.jpg",
    },
    "Tarih ve Plaj Rotaları" : {
      "1. Tarih ve Plaj Rotası" : "assets/images/Cuhalli_Plaji_1.jpg",
      "2. Tarih ve Plaj Rotası" : "assets/images/Ceneviz_Kalesi_1.jpg",
    },
    "Tarih ve Yayla Rotaları" : {
      "1. Tarih ve Yayla Rotası" : "assets/images/Konuralp_Antik_Tiyatro_1.jpg",
      "2. Tarih ve Yayla Rotası" : "assets/images/Topuk_Yaylası.png",
      "3. Tarih ve Yayla Rotası" : "assets/images/Mehmet_Akif_Bey_Köşkü.png",
    },
    "Yayla ve İnanç Rotaları" : {
      "1. Yayla ve İnanç Rotası" : "assets/images/Karduz_Yaylasi_1.jpg",
      "2. Yayla ve İnanç Rotası" : "assets/images/Konuralp_Turbesi_1.jpg",
      "3. Yayla ve İnanç Rotası" : "assets/images/Akçakoca_Merkez_Cami.png",
    },
    "Yayla ve Deniz Rotaları" : {
      "1. Yayla ve Deniz Rotası" : "assets/images/Karduz_Yaylası.png",
      "2. Yayla ve Deniz Rotası" : "assets/images/Ceneviz_Kalesi_2.png",
      "3. Yayla ve Deniz Rotası" : "assets/images/Çuhallı_Plajı.png",
    },
    "Deniz ve İnanç Rotaları" : {
      "1. Deniz ve İnanç Rotası" : "assets/images/Cumayeri_Yeni_Cami_3.png",
      "2. Deniz ve İnanç Rotası" : "assets/images/Çuhallı_Plajı.png",
      "3. Deniz ve İnanç Rotası" : "assets/images/Akçakoca_Merkez_Cami.png",
    },
    "Doğa ve Deniz Rotaları" : {
      "1. Doğa ve Deniz Rotası" : "assets/images/Yogunpelit_Mengen_Selalesi_1.jpg",
      "2. Doğa ve Deniz Rotası" : "assets/images/Kurugöl_Kanyonu_1.jpg",
      "3. Doğa ve Deniz Rotası" : "assets/images/Ceneviz_Kalesi_1.jpg",
    },
  };

  static const Map<String, List<Widget>> routePages= {
    "Doğa ve Tarih Rotaları" : [
      DogaVeTarihRotasiBirPage(),
      DogaVeTarihRotasiIkiPage(),
      DogaVeTarihRotasiUcPage(),
    ],
    "Doğa ve Yayla Rotaları" : [
      DogaVeYaylaRotasiBirPage(),
      DogaVeYaylaRotasiIkiPage(),
      DogaVeYaylaRotasiUcPage(),
    ],
    "Tarih ve İnanç Rotaları" : [
      TarihVeInancRotasiBirPage(),
      TarihVeInancRotasiIkiPage(),
      TarihVeInancRotasiUcPage(),
    ],
    "Tarih ve Plaj Rotaları" : [
      TarihVePlajRotasiBirPage(),
      TarihVePlajRotasiIkiPage(),
    ],
    "Tarih ve Yayla Rotaları" : [
      TarihVeYaylaRotasiBirPage(),
      TarihVeYaylaRotasiIkiPage(),
      TarihVeYaylaRotasiUcPage(),
    ],
    "Yayla ve İnanç Rotaları" : [
      YaylaVeInancRotasiBirPage(),
      YaylaVeInancRotasiIkiPage(),
      YaylaVeInancRotasiUcPage(),
    ],
    "Yayla ve Deniz Rotaları" : [
      YaylaVeDenizRotasiBirPage(),
      YaylaVeDenizRotasiIkiPage(),
      YaylaVeDenizRotasiUcPage(),
    ],
    "Deniz ve İnanç Rotaları" : [
      DenizVeInancRotasiBirPage(),
      DenizVeInancRotasiIkiPage(),
      DenizVeInancRotasiUcPage(),
    ],
    "Doğa ve Deniz Rotaları" : [
      DogaVeDenizRotasiBirPage(),
      DogaVeDenizRotasiIkiPage(),
      DogaVeDenizRotasiUcPage(),
    ],
  };

  static const List<String> dogatarihrotasi1 = [
    "Aydınpınar Şelalesi",
    "Efteni Gölü",
    "Güzeldere Şelalesi",
    "Gölyaka Kültür Parkı", //!
    "Konuralp Müzesi", //!
    "Konuralp Antik Tiyatro",
    "Roma Köprüsü",
  ];
  static const List<String> dogatarihrotasi2 = [
    "Kurugöl Tabiat Parkı",
    "Fakıllı Mağrası",
    "Mehmet Akif Bey Köşkü",
    "Ceneviz Kalesi",
    "Aktaş Şelalesi",
    "Harmankaya Şelalesi",
  ];
  static const List<String> dogatarihrotasi3 = [
    "Samandere Şelalesi",
    "Konuralp Antik Tiyatro",
    "Konuralp Müzesi", //!
    "Roma Köprüsü",
    "Yoğunpelit Mengen Şelalesi",
    "Saklıkent Şelalesi",
    "Sarıkaya Mağrası",
  ];

  static const List<String> dogayaylarotasi1 = [
    "Güzeldere Şelalesi",
    "Karduz Yaylası",
    "Efteni Gölü",
    "Gölyaka Kültür Parkı", //!
    "Aydınpınar Şelalesi",
    "Derebalık Yaylası",
  ];
  static const List<String> dogayaylarotasi2 = [
    "Torkul Yaylası",
    "Samandere Şelalesi",
    "Sarıkaya Mağrası",
    "Saklıkent Şelalesi",
    "Yoğunpelit Mengen Şelalesi",
  ];
  static const List<String> dogayaylarotasi3 = [
    "Topuk Yaylası",
    "Kurugöl Tabiat Parkı",
    "Fakıllı Mağrası",
    "Aktaş Şelalesi",
    "Harmankaya Şelalesi",
  ];

  static const List<String> tarihinancrotasi1 = [
    "Yabal Dede Türbesi",
    "Karaçalı Orhangazi Cuma Cami",
    "Konuralp Türbesi",
    "Konuralp Antik Tiyatro",
    "Roma Köprüsü",
  ];
  static const List<String> tarihinancrotasi2 = [
    "Eş Şeyh Aliyyü-l Müslahiddin Hazretleri", //!
    "Cumayeri Yeni Cami",
    "Yeni Meze Cami",
    "Hemşin Köyü Cami",
  ];

  static const List<String> tarihinancrotasi3 = [
    "Mehmet Akif Bey Köşkü",
    "Akçakoca Merkez Cami",
    "Ceneviz Kalesi",
    "Ahmet Dede Türbesi",
  ];

  static const List<String> tarihplajrotasi1 = [
    "Konuralp Müzesi", //!
    "Konuralp Antik Tiyatro",
    "Roma Köprüsü",
    "Kemos Aile Plajı", //!
    "Çuhallı Plajı",
  ];
  static const List<String> tarihplajrotasi2 = [
    "Mehmet Akif Bey Köşkü",
    "Ceneviz Kalesi",
    "Kalkın Plajı", //!
    "Paşalar Plajı", //!
    "Melenağzı Plajı", //!
  ];

  static const List<String> tarihyaylarotasi1 = [
    "Pürenli Yaylası",
    "Odayeri Yaylası",
    "Derebalık Yaylası",
    "Konuralp Müzesi", //!
    "Konuralp Antik Tiyatro",
    "Roma Köprüsü",
  ];
  static const List<String> tarihyaylarotasi2 = [
    "Topuk Yaylası",
    "Torkul Yaylası",
    "Konuralp Müzesi", //!
    "Konuralp Antik Tiyatro",
    "Roma Köprüsü",
  ];
  static const List<String> tarihyaylarotasi3 = [
    "Kardüz Yaylası",
    "Mehmet Akif Bey Köşkü",
    "Ceneviz Kalesi",
  ];

  static const List<String> yaylainancrotasi1 = [
    "Kardüz Yaylası",
    "Pürenli Yaylası",
    "Cumayeri Yeni Cami",
    "Eş Şeyh Aliyyü-l Müslahiddin Hazretleri", //!
  ];
  static const List<String> yaylainancrotasi2 = [
    "Derebalık Yaylası",
    "Odayeri Yaylası",
    "Torkul Yaylası",
    "Yabal Dede Türbesi",
    "Konuralp Türbesi",
    "Organ Gazi Cami",
  ];
  static const List<String> yaylainancrotasi3 = [
    "Topuk Yaylası",
    "Akçakoca Merkez Cami",
    "Ahmet Dede Türbesi",
    "Hemşin Köyü Cami",
    "Yeni Meze Cami",
  ];

  static const List<String> yayladenizrotasi1 = [
    "Kardüz Yaylası",
    "Pürenli Yaylası",
    "Çuhallı Plajı",
    "Ceneviz Kalesi Plajı",
    "Kalkın Plajı", //!
    "Paşalar Plajı", //!
    "Melenağzı Plajı", //!
  ];
  static const List<String> yayladenizrotasi2 = [
    "Derebalık Yaylası",
    "Torkul Yaylası",
    "Odayeri Yaylası",
    "Çuhallı Plajı",
    "Ceneviz Kalesi Plajı", //!
    "Kalkın Plajı", //!
    "Paşalar Plajı", //!
    "Melenağzı Plaj", //!
  ];
  static const List<String> yayladenizrotasi3 = [
    "Topuk Yaylası",
    "Çuhallı Plajı",
    "Ceneviz Kalesi Plajı", //!
    "Kalkın Plajı", //!
    "Paşalar Plajı", //!
    "Melenağzı Plajı", //!
  ];

  static const List<String> denizinancrotasi1 = [
    "Cumayeri Yeni Cami",
    "Eş Şeyh Aliyyü-l Müslahiddin Hazretleri", //!
    "Yeni Meze Cami",
    "Hemşin Köyü Cami",
    "Melenağzı Plajı", //!
    "Paşalar Plajı", //!
  ];
  static const List<String> denizinancrotasi2 = [
    "Yabal Dede Türbesi",
    "Organ Gazi Cami",
    "Konuralp Türbesi",
    "Kemos Aile Plajı", //!
    "Çuhallı Plajı",
  ];
  static const List<String> denizinancrotasi3 = [
    "Ahmet Dede Türbesi",
    "Çuhallı Plajı",
    "Akçakoca Merkez Cami",
    "Ceneviz Kalesi Plajı", //!
    "Kalkın Plajı", //!
  ];

  static const List<String> dogadenizrotasi1 = [
    "Yoğunpelit Mengen Şelalesi",
    "Saklıkent Şelalesi",
    "Sarıkaya Mağrası",
    "Fakıllı Mağrası",
    "Kemos Aile Plajı", //!
    "Çuhallı Plajı",
  ];
  static const List<String> dogadenizrotasi2 = [
    "Efteni Gölü",
    "Gölyaka Kültür Parkı", //!
    "Harmankaya Şelalesi",
    "Aktaş Şelalesi",
    "Kurugöl Kanyonu",
    "Kalkın Plajı", //!
    "Paşalar Plajı", //!
    "Melenağzı Plajı", //!
  ];
  static const List<String> dogadenizrotasi3 = [//------------------
    "Güzeldere Şelalesi",
    "Aydınpınar Şelalesi",
    "Samandere Şelalesi",
    "Ceneviz Kalesi Plajı", //!
  ];

}