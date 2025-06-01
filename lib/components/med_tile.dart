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
        children: [
          // Medicinee Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              medicine.imagePath,
              height: 150,
              width: 260,
            ),
          ),

          // Detals
          Text(
            medicine.description,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          // Pricr and More Details
          Row(
            children: [
              Column(
                // Name of the Medicine
                Text(
                  medicine.name
                ),

                // Price of the Medicine
                Text(
                  medicine.price
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}