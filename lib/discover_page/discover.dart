import 'package:flutter/material.dart';
import 'package:travella_01/data/mekan_item.dart';
import 'package:travella_01/data/strings.dart';

import '../models/mekan.dart';

class discover extends StatelessWidget {
  late List<mekan> tumMekanlar = [];
  discover(){ 
    tumMekanlar = veriKaynagi();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
     
      
      
      body: 
        
        Center(
        child:ListView.builder(itemBuilder: (context, index){ 
          return mekanItem(listelenenMekan: tumMekanlar[index],);
        }, 
        itemCount: tumMekanlar.length,),)
        
        
    );
  }

  List<mekan> veriKaynagi() { 
    List<mekan> gecici = []; 
    
    mekan.Tur_values.addAll(Strings.Turizm_turu.values);
    for(int i = 0; i<35;i++){ 
      var mekanAdi = Strings.mekan_adlari[i];
      var mekanDetay = Strings.Mekan_Detayi[0]; 
      var mekanTuru =mekan.Tur_values[i]  ;
      var mekanKucukResim = Strings.kucukResim[i] + ".png"; 
      var mekanBuyukResim = Strings.BuyukResim[i] + ".png";

    mekan eklenecekMekan= mekan(mekanAdi, mekanDetay, mekanTuru, mekanKucukResim, mekanBuyukResim);
    gecici.add(eklenecekMekan);
    }
    return gecici;
  }
}