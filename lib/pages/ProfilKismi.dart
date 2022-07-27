
import 'package:flutter/material.dart';


class ProfilKismi extends StatelessWidget {
  const ProfilKismi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
            padding: EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius:100,
              backgroundColor: Colors.pink,
              backgroundImage: NetworkImage(
                  "https://c.tenor.com/rKLBka9zl5UAAAAd/yeah-excellent.gif"),
                  child:Padding(padding: EdgeInsets.only(top:150 ),child: Text("Fehmi Demirkan",style:TextStyle(fontWeight:FontWeight.bold)  ,),

                  ),
            )
            ),
      ],
    );
  }
} 
class Whatif extends StatelessWidget {
  const Whatif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text("Profil"
      ),
      ),
      body: SingleChildScrollView(child: Center(child: Column(children: <Widget>[
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
                    "https://c.tenor.com/rKLBka9zl5UAAAAd/yeah-excellent.gif"),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
               
              labelText: "İsim",
              hintText: '"Örn:Fehmi,Melih,Vahid"',
              border: OutlineInputBorder(),
            ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
          
            decoration: InputDecoration(
              labelText: "mail",
              hintText: '"Örn:travella@gmail.com"',
              border: OutlineInputBorder(),
              
            ),
           ),
         ),
        


      ]
      ),
      )
      ),
      
    ); 
    
  }
}