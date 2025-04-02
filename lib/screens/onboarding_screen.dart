import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'onboarding_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(child: Text('Benvenuto su RunBalance!')),
          Center(child: Text('Monitora il tuo allenamento')),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                  },
                  child: Text('Inizia'))),
        ],
      ),
    );
  }
}