import 'dart:async';
import 'package:flutter/material.dart';

class ConnessioneScreen extends StatefulWidget {
  @override
  _ConnessioneScreenState createState() => _ConnessioneScreenState();
}

class _ConnessioneScreenState extends State<ConnessioneScreen> {
  // Variabili per lo stato di salute simulato
  double cardioHealth = 0;
  double muscleHealth = 0;
  double jointHealth = 0;

  // Timer per simulare aggiornamenti periodici dello stato di salute
  Timer? _healthTimer;

  @override
  void initState() {
    super.initState();
    startHealthSimulation(); // Inizia la simulazione al caricamento della schermata
  }

  // Funzione per avviare la simulazione dello stato di salute
  void startHealthSimulation() {
    _healthTimer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (mounted) {
        setState(() {
          // Aggiorna i valori delle barre con percentuali casuali tra 0 e 100
          cardioHealth = (cardioHealth + (5 + (cardioHealth < 100 ? 1 : 0))) % 100;
          muscleHealth = (muscleHealth + (5 + (muscleHealth < 100 ? 1 : 0))) % 100;
          jointHealth = (jointHealth + (3 + (jointHealth < 100 ? 1 : 0))) % 100;
        });
      }
    });
  }

  // Funzione per fermare la simulazione e liberare risorse
  @override
  void dispose() {
    _healthTimer?.cancel(); // Ferma il timer quando il widget viene distrutto
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connessione Dispositivi')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // La logica per la connessione del dispositivo può essere aggiunta qui
            },
            child: Text('Connetti Dispositivo'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // Solo uno per esempio, se ci sono più dispositivi è possibile aggiungere la logica
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Dispositivo Simulato"),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // La logica per connettersi al dispositivo
                    },
                    child: Text('Connetti'),
                  ),
                );
              },
            ),
          ),
          // Barra di stato simulata
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cardio Health: ${cardioHealth.toStringAsFixed(0)}%", style: TextStyle(fontSize: 18)),
                LinearProgressIndicator(value: cardioHealth / 100),
                SizedBox(height: 20),
                Text("Muscle Health: ${muscleHealth.toStringAsFixed(0)}%", style: TextStyle(fontSize: 18)),
                LinearProgressIndicator(value: muscleHealth / 100),
                SizedBox(height: 20),
                Text("Joint Health: ${jointHealth.toStringAsFixed(0)}%", style: TextStyle(fontSize: 18)),
                LinearProgressIndicator(value: jointHealth / 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
