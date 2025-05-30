import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // A Search Bar
       Container(
            margin: const EdgeInsets.all(10),  
            padding: const EdgeInsets.symmetric(horizontal: 10),  
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.search, color: Colors.black),
              ],
            )
          ),

        // Most Purchased
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most Purchased',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[700],
                ),
              )
          
            ]
          ),
        )
      ]
    )
  }
}