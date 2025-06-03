import 'package:flutter/material.dart';

import 'package:healthcart/pages/cart_page.dart';
import 'package:healthcart/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // This Selected Index is to control bottom navigattion starting with 0 when user taps on bottom bar
  int _selectedIndex = 0;

  // This Func updates the selected index when user taps on bottom bar
  void navigateBottomBar(int index) {
    setState( () {
      _selectedIndex = index;
    });
  }

  // Pages o display
  final List<Widget> _pages = [
    // Shop Page
    const ShopPage(),

    // Cart Page
    const CartPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: myBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Opens the drawer when menu icon is tapped
              },
            );
          }
        ),
      ),
      // A Blank Drawer
      drawer: const Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [            
          ],
        ),
      ),
      body: _pages[_selectedIndex], // Displaying the selected page based on index
    );
  }
  
  myBottomNavBar({required void Function(dynamic index) onTabChange}) {}
}