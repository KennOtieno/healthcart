import 'package:flutter/material.dart';
import 'package:healthcart/components/bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Int to keep track of selected index so as to control the Bottom Navigation

  // A Function to update selected index

  // When user taps on button
  void navigateBottomNavigation(int index) {
    // Updating state with new index
    setState( (){
      _selectedIndex = index;
    });
  }

  // Pages to be displayed on the Home Page
  // Meds Page

  // Cart Page
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigation(
        onTabChange: (index) => navigateBottomNavigation(index),
      ),
    );
  }
}