import 'package:flutter/material.dart';

class ProgrammiScreen extends StatelessWidget {
  final List<String> programmi = ['Programma Base', 'Programma Avanzato', 'HIIT', 'Recupero'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Programmi di Allenamento')),
      body: ListView.builder(
        itemCount: programmi.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(programmi[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Azione per aprire il dettaglio del programma
            },
          );
        },
      ),
    );
  }
}
