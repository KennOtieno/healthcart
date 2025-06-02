import 'package:flutter/material.dart';
import 'package:healthcart/models/cart.dart';
import 'pages/introduction_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const IntroductionPage(
        debugShowCheckedModeBanner: false,
        home: IntroductionPage(),
      ),
    );
  }

}