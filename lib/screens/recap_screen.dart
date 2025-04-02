import 'package:flutter/material.dart';
import 'allenamento.dart'; // Importa il file allenamento.dart

class RecapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ottieni gli allenamenti salvati dalla lista globale
    final allenamenti = GestoreAllenamenti.ottieniAllenamenti();

    return Scaffold(
      appBar: AppBar(title: Text('Recap')),
      body: allenamenti.isEmpty
          ? Center(child: Text('Nessun allenamento salvato'))
          : ListView.builder(
        itemCount: allenamenti.length,
        itemBuilder: (context, index) {
          final allenamento = allenamenti[index];
          return Card(
            child: ListTile(
              title: Text("Distanza: ${allenamento.distanza} m"),
              subtitle: Text("Tempo totale: ${formatTime(allenamento.tempoTotale)} - Tempo/km: ${allenamento.tempoPerKm} min/km"),
            ),
          );
        },
      ),
    );
  }

  // Funzione per formattare il tempo
  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int sec = seconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }
}
