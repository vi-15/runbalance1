import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Allenamento'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Programmi'),
        BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Recap'),
        BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Connessione'),
        BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Sfide'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Impostazioni'),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
    );
  }
}
