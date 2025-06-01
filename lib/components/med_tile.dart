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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

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


          // Name and Price * 
          Padding(
            padding: const EdgeInsets.only(
              left: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                     Text(
                    medicine.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
            
                  // Price of the Medicine
                  Text(
                    medicine.price,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  ]
                ),
                // ADD TO CART Button
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    )
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}