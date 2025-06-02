import 'package:flutter/material.dart';
import 'package:healthcart/components/med_tile.dart';
import 'package:healthcart/models/cart.dart';
import 'package:healthcart/models/medicine.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage> {

  // Add Medicine to the Cart
  void addMedicineToCart(Medicine medicine) {
    Provider.of<Cart>(context, listen: false).addToCart(medicine);

    // Show user that the medicine has been added to the cart suceesfult
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Added to Cart'),
        content: Text('Added to your Cart'),
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
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
              crossAxisAlignment: CrossAxisAlignment.end,
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

        // Shop Now
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Shop Now',
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
        ),
        const SizedBox(height: 10),
        // Product List
        Expanded(
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // Get Medicine
              Medicine medicine = value.getCart()[index];

              // returning MedTile
              return MedTile(
                medicine: medicine,
                onTap: () => addMedicineToCart(medicine),
              );
            },
          ),
        ),
        // Divider
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ]
    );
    );
  }
}