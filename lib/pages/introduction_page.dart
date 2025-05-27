import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/images/health_cart_logo.png',
                height: 200, 
              ),
            ),
            const SizedBox(height: 20),
        
            // App Name
            const Text(
              'Health Cart',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )
            ),
            const SizedBox(height: 20),
        
            // Sub-Title
            const Text(
              'Your Health, Your Cart, Your Way.',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 19),
        
            // Button for user to enter the app
        
          ],
        ),
      )
    );
  }
}