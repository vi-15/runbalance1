import 'dart:async';
import 'package:flutter/material.dart';
import 'allenamento.dart'; // Importa il file allenamento.dart

class AllenamentoScreen extends StatefulWidget {
  @override
  _AllenamentoScreenState createState() => _AllenamentoScreenState();
}

class _AllenamentoScreenState extends State<AllenamentoScreen> {
  double distance = 0.0;
  int totalTimeInSeconds = 0;
  int currentTimeInSeconds = 0;
  Timer? _timer;
  bool isRunning = false;

  // Funzione per avviare la corsa
  void startRunning() {
    setState(() {
      isRunning = true;
      distance = 0.0;
      currentTimeInSeconds = 0;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (isRunning) {
        setState(() {
          distance += 0.01; // Incrementa la distanza
          currentTimeInSeconds++;
        });
      }
    });
  }

  // Funzione per fermare la corsa e salvare l'allenamento
  void stopRunning() {
    setState(() {
      isRunning = false;
      totalTimeInSeconds = currentTimeInSeconds;

      // Calcolare il tempo per km
      String tempoPerKm = (totalTimeInSeconds / (distance / 1000)).toStringAsFixed(2);

      // Aggiungi l'allenamento alla lista globale
      GestoreAllenamenti.aggiungiAllenamento(Allenamento(
        distanza: distance,
        tempoTotale: totalTimeInSeconds,
        tempoPerKm: tempoPerKm,
        data: DateTime.now(),
      ));
    });

    _timer?.cancel();
  }

  // Funzione per formattare il tempo
  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int sec = seconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Allenamento')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Distanza percorsa: ${distance.toStringAsFixed(2)} m', style: TextStyle(fontSize: 18)),
            Text('Tempo totale: ${formatTime(currentTimeInSeconds)}', style: TextStyle(fontSize: 18)),
            Text('Tempo per km: ${(distance != 0) ? (totalTimeInSeconds / (distance / 1000)).toStringAsFixed(2) : "0.00"} min/km', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isRunning ? stopRunning : startRunning,
              child: Text(isRunning ? 'Ferma Corsa' : 'Inizia Corsa'),
            ),
          ],
        ),
      ),
    );
  }
}


