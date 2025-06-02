import 'package:flutter/material.dart';
import 'package:healthcart/models/medicine.dart';

class CartItems extends StatefulWidget {
  Medicine medicine;
  CartItems({
    super.key,
    required this.medicine,
  });

  @override
  State<CartItems> createState() => _CartItemsState();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.medicine.imagePath
        ),
        title: Text(
          widget.medicine.name
        ),

        subtitle: Text(
          widget.medicine.price
        ),
      ),
    )
  }
}