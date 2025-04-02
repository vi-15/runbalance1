import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'onboarding_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text('Accedi'),
        ),
      ),
    );
  }
}