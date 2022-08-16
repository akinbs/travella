class Onerilen{ 
  String name;
  String image;
  Onerilen(this.name,this.image);
}  
List<Onerilen> onerilenler = Onerilen_data.map((item) => Onerilen(item["name"]!,item["image"]!)).toList(); 

var Onerilen_data =[
  {
    "name":"Kurugöl Kanyonu",
    "image": "assets/images/Kurugöl_Kanyonu.png"

  },
  {
    "name":"Ceneviz Kalesi",
    "image": "assets/images/Ceneviz_Kalesi.png"

  },
  {
    "name":"Sarıkaya Mağrası",
    "image": "assets/images/Sarıkaya_Mağrası.png"

  },
  {
    "name":"Aydınpınar Şelalesi",
    "image": "assets/images/Aydınpınar_Şelalesi.png"

  },
  {
    "name":"Torkul Yaylası",
    "image": "assets/images/Torkul_Yaylası.png"

  },
  {
    "name":"Antik Tiyatro",
    "image": "assets/images/Konuralp_Antik_Tiyatro.png"

  },
];