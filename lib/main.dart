import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(RunBalanceApp());
}

class RunBalanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RunBalance 1',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SplashScreen(),
    );
  }
}
