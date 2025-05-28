import 'package:flutter/material.dart';
import 'package:healthcart/pages/home_page.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'lib/images/health_cart_logo.png',
                  height: 200, 
                ),
              ),
              const SizedBox(height: 18),
          
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
              const SizedBox(height: 22),
          
              // Button for user to enter the app
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}