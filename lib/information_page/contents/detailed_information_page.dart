import 'package:flutter/material.dart';


import '../constants.dart';



class DetailedInformationText extends StatelessWidget {
  const DetailedInformationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        
        """Yığılca İlçesi Yağcılar Köyü'nde bulunan Saklıkent Şelalesi, Yedigöller yolu güzergahında, Düzce’ye 45 kilometre, ilçe merkezine ise 5 kilometre mesafededir. Düzce'nin keşfedilmesi gereken doğal güzelliklerinden olan şelale, ‘‘Yığılca Saklıkent Şelalesi Peyzaj Projesi’’ ile gerekli çevre düzenlemeleri yapılarak bölgenin piknik ve mesire alanı olarak hareketlenmesi sağlanmıştır.
Yığılca İlçe Merkezi’nden Yağcılar Köyü’ne günün belirli saatlerinde toplu ulaşım araçları ile ulaşım sağlanmaktadır.
Mükemmel doğa manzaralarıyla karşılaşacağınız şelaleye gitmeden önce tüm ihtiyaçlarınızı karşılamanızı öneririz çünkü şelalelerin bulunduğu bölgede ihtiyaçlarınızı karşılayacağınız işletme bulunmamaktadır.
Şelalenin yer aldığı vadiye yaya olarak inmeniz ve yürümeniz gerekmekte. Zaman zaman dere içerisinden geçmek zorunluluğu olacağından kıyafet ve ayakkabı konusuna dikkat etmeniz gerekmektedir.
""",
style: defaultTextStyle(),);
  }
}


