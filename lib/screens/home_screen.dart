import 'package:flutter/material.dart';
import 'allenamento_screen.dart';
import 'programmi_screen.dart';
import 'recap_screen.dart';
import 'connessione_screen.dart';
import 'sfide_screen.dart';
import 'impostazioni_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RunBalance')),
      body: Center(child: Text('Seleziona una sezione')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Allenamento'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Programmi'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Recap'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Connessione'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Sfide'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Impostazioni'),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          Widget page;
          switch (index) {
            case 0:
              page = AllenamentoScreen();
              break;
            case 1:
              page = ProgrammiScreen();
              break;
            case 2:
              page = RecapScreen();
              break;
            case 3:
              page = ConnessioneScreen();
              break;
            case 4:
              page = SfideScreen();
              break;
            case 5:
              page = ImpostazioniScreen();
              break;
            default:
              return;
          }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
