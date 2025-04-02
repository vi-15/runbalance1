import 'package:flutter/material.dart';

class SfideScreen extends StatelessWidget {
  final List<String> sfide = ['Corri 5km in meno di 30 min', 'Completa 3 allenamenti questa settimana', 'Brucia 500 kcal in un giorno'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sfide e Obiettivi')),
      body: ListView.builder(
        itemCount: sfide.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(sfide[index]),
              trailing: Icon(Icons.check_circle_outline, color: Colors.grey),
              onTap: () {
                // Azione per partecipare alla sfida
              },
            ),
          );
        },
      ),
    );
  }
}
