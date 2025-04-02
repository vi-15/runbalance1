class Allenamento {
  final double distanza; // in metri
  final int tempoTotale; // tempo totale in secondi
  final String tempoPerKm; // tempo per km in formato "min/km"
  final DateTime data;

  Allenamento({
    required this.distanza,
    required this.tempoTotale,
    required this.tempoPerKm,
    required this.data,
  });
}

class GestoreAllenamenti {
  // Lista statica per memorizzare gli allenamenti
  static List<Allenamento> allenamentiSalvati = [];

  // Metodo per aggiungere un allenamento
  static void aggiungiAllenamento(Allenamento allenamento) {
    allenamentiSalvati.add(allenamento);
  }

  // Metodo per ottenere gli allenamenti salvati
  static List<Allenamento> ottieniAllenamenti() {
    return allenamentiSalvati;
  }
}
