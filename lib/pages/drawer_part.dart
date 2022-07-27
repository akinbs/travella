import 'package:flutter/material.dart';
class DrawerIcerigi extends StatelessWidget {
  const DrawerIcerigi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("melihguler"),
          accountEmail: Text("melihemreguler@hotmail.com"),
          currentAccountPicture: CircleAvatar(
            child: Text("MG"),
          ), //yuvarlak bir kullanıcı fotosu yapmaya çalıştım ama olmadı.
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade300,
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Bildirimler"),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                },
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Konum"),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Ayarlar"),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Çıkış Yap"),
                trailing: Icon(Icons.chevron_right),
                onTap: (){
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}