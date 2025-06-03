import 'package:flutter/material.dart';
import 'package:healthcart/components/bottom_navigation.dart';
import 'package:healthcart/pages/cart_page.dart';
import 'package:healthcart/pages/shop_page.dart';

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
  // Shop Page
  // ignore: non_constant_identifier_names
  ShopPage(),

  // Cart Page
  // ignore: non_constant_identifier_names
  CartPage(),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      bottomNavigationBar: BottomNavigation(
        onTabChange: (index) => navigateBottomNavigation(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[100],
        child: Column(
          children: [
            // Logo
            DrawerHeader(
              child: Image.asset(
                'lib/images/healthcart_logo.png',
                color: Colors.black,
              ),
            ),
            // Divider
            const Padding(
              padding: EdgeInsets.symmetric(24),
              child: Divider(
                color: Colors.grey,
              ),
            ),

            // Other Pages
            // 1. Shop Page
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                   color: Colors.white
                   ),
                title: Text(
                  'Home', 
                  style: TextStyle(
                    color: Colors.white
                    ),
                    ),
              ),
            ),

            // 2. About Page
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                   color: Colors.white
                   ),
                title: Text(
                  'About', 
                  style: TextStyle(
                    color: Colors.white
                    ),
                    ),
              ),
            ),

            // 3. LogOut Page
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                   color: Colors.white
                   ),
                title: Text(
                  'Log Out', 
                  style: TextStyle(
                    color: Colors.white
                    ),
                    ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}