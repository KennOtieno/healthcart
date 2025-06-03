import 'package:flutter/material.dart';
import 'package:healthcart/models/cart.dart';
import 'package:healthcart/models/medicine.dart';
import 'package:provider/provider.dart';

class CartItems extends StatefulWidget {
  Medicine medicine;
  CartItems({
    super.key,
    required this.medicine,
  });

  @override
  State<CartItems> createState() => _CartItemsState();
}
class _CartItemsState extends State<CartItems> {
  // Remove item from cart logic can be added here
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.medicine);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
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
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            removeItemFromCart();
          },
        ),
      ),
    );
  }
}