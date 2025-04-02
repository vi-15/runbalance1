import 'package:flutter/material.dart';

class ImpostazioniScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Impostazioni')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Modifica Profilo'),
            onTap: () {
              // Naviga alla schermata profilo
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifiche'),
            onTap: () {
              // Naviga alle impostazioni notifiche
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            onTap: () {
              // Naviga alle impostazioni privacy
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Esci'),
            onTap: () {
              // Azione per fare logout
            },
          ),
        ],
      ),
    );
  }
}
