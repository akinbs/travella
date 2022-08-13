import 'package:flutter/material.dart';
import 'package:travella_01/discover_page/discover.dart';
import 'package:travella_01/information_page/information_page.dart';


class favoriler extends StatelessWidget {
  const favoriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 250,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderOnForeground: true,
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 28,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Container(
                                  child: Image.network(
                                      "https://cdn.discordapp.com/attachments/1004744496761806908/1004745396695867454/20170524152238891_A.BOZDEMIR_Derebalik_Yaylasi.jpg")),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 16, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "DereBeylik Yaylası                               ",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Düzce/Türkiye",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '"Derebalık Yaylası; Düzce’nin Merkez İlçesi, Aydınpınar Köyü sınırları içerisinde yer almaktadır (...) "',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                  child: Text(
                                    "SAYFAYA GİT",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderOnForeground: true,
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 28,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.network(
                                "https://cdn.discordapp.com/attachments/1004744496761806908/1004745732420542605/Aydnpnar_Selalesi.png",
                                fit: BoxFit.fitWidth,
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 16, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "AydınPınar Şelalesi                               ",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Düzce/Türkiye",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '" Düzce Merkez Aydınpınar köyü sınırları içerisinde bulunan Aydınpınar Şelaleleri, şehir merkezine 10 km mesafededir(...)" ',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                  child: Text(
                                    "SAYFAYA GİT",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderOnForeground: true,
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 28,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.network(
                                "https://cdn.discordapp.com/attachments/1004744496761806908/1005793024812535900/Konuralp_Antik_Tiyatro.png",
                                fit: BoxFit.fitWidth,
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 16, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Konuralp Antik Tiyatro      ",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Düzce/Türkiye",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '" Prusias ad Hypium Antik Kenti Tiyatrosu, Karadeniz bölgesinin en iyi korunmuş antik tiyatrosudur.(...)" ',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                  child: Text(
                                    "SAYFAYA GİT",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderOnForeground: true,
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 28,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.network(
                                "https://cdn.discordapp.com/attachments/1004744496761806908/1005409266758336543/Topuk_Yaylas.png",
                                fit: BoxFit.fitWidth,
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 16, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Topuk Yaylası",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Düzce/Türkiye",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '"Topuk Yaylası Resort & Sport, 150 dönümden büyük bir arazi üzerinde ve 2.500 metrekarelik bir alanda inşa edilmiştir.(...)" ',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                  child: Text(
                                    "SAYFAYA GİT",
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 250,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderOnForeground: true,
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 28,
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Image.network(
                                  "https://cdn.discordapp.com/attachments/1004744496761806908/1005409200723206195/Guzeldere_Selalesi.png",
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "GüzelDere Şelalesi",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Düzce/Türkiye",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '"Türkiye’nin en yüksekten (130metre) akan şelalelerinden biri olan Güzeldere Şelalesi(...)" ',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                    child: Text("SAYFAYA GİT",
                                        style: TextStyle(
                                          color: Colors.green,
                                        )))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 250,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderOnForeground: true,
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 28,
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Image.network(
                                  "https://cdn.discordapp.com/attachments/1004744496761806908/1005535961649778688/Akcakoca_Merkez_Cami.png",
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Akcakoca Merkez Camii  ",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Düzce/Türkiye",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '"Akçakoca kent merkezinde sıra dışı görünümüyle dikkat çeken Akçakoca Merkez Camii (...)" ',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                    child: Text("SAYFAYA GİT",
                                        style: TextStyle(
                                          color: Colors.green,
                                        )))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 250,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderOnForeground: true,
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 28,
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Image.network(
                                  "https://cdn.discordapp.com/attachments/1004744496761806908/1005535961289084949/Ceneviz_Kalesi.png",
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Ceneviz Kalesi",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Düzce/Türkiye",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '"Düzce ili, Akçakoca ilçesinde Cenevizlerle özdeşleşmiş olan kale, ilçenin 2,5 km batısında, iki koy arasında bir falez üzerinde yapılmıştır(...)"',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: ()=>
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context)=>Discover(),
                                      ),
                                      ),
                                    child: Text("SAYFAYA GİT",
                                        style: TextStyle(
                                          color: Colors.green,
                                        )))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
