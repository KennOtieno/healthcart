import 'package:flutter/material.dart';
import 'package:healthcart/models/medicine.dart';

class MedTile extends StatelessWidget {
  Medicine medicine;
  MedTile(
    {
      super.key,
      required this.medicine,
      }
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(19),
      width: 260,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        // My Plan Is To:
        // 1. Medicine Image
        // 2. Medicine Short Description
        // 3. Medicine Price and Description
        // 4. A '+' button to add to the cartt
      )
    );
  }
}