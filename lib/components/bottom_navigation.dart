import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  void Function(int)? onTabChange;

  BottomNavigation(
    {
      super.key,
      required this.onTabChange,
      }
      );

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: GNav(
        padding: const EdgeInsets.symmetric(vertical: 20,),
        color: Colors.grey[400],
        activeColor: Colors.grey[800],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart'
          ),
        ]
      )
    );
  }
}