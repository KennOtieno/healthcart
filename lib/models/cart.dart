import 'package:flutter/material.dart';
import 'package:healthcart/models/medicine.dart';

class Cart extends ChangeNotifier {
  // List of Medicine for sell
  List<Medicine> medicinesForSell = [
    Medicine(
      name: 'A-L',
      price: '100',
      imagePath: 'lib/images/al.jpg',
      description: 'Malaria treatment',
    ),
    Medicine(
      name: 'Amoxicillin',
      price: '150',
      imagePath: 'lib/images/amoxil.jpg',
      description: 'Antibiotic for bacterial infections',
    ),
    Medicine(
      name: 'Ibuprofen',
      price: '200',
      imagePath: 'lib/images/brufen.jpg',
      description: 'Pain relief and anti-inflammatory',
    ),
    Medicine(
      name: 'Buscopan',
      price: '120',
      imagePath: 'lib/images/buscopan.jpg',
      description: 'Relief for stomach cramps and spasms',
    ),
    Medicine(
      name: 'Panadol',
      price: '80',
      imagePath: 'lib/images/panadol.jpg',
      description: 'Pain relief and fever reducer',
    ),
    Medicine(
      name: 'Piriton',
      price: '100',
      imagePath: 'lib/images/piriton.jpg',
      description: 'Antihistamine for allergy relief',
    ),
    Medicine(
      name: 'Septrin',
      price: '180',
      imagePath: 'lib/images/septrin.jpg',
      description: 'Antibiotic for respiratory infections',
    ),
    Medicine(
      name: 'Ventolin',
      price: '500',
      imagePath: 'lib/images/ventolin.jpg',
      description: 'Bronchodilator for asthma relief',
    ),

  ];

  // List of Medicine in the Users Cart
  List<Medicine> userCart = [];

  // List of Medicine for sell
  List<Medicine> getCart() {
    return userCart;
  }

  // Get Cart
  List<Medicine> getUserCart() {
    return userCart;
  }

  // Add Items to Cart
  void addToCart(Medicine medicine) {
    userCart.add(medicine);
    notifyListeners();
  }

  // Remove Items from Cart
  void removeMedicineFromCart(Medicine medicine) {
    userCart.remove(medicine);
    notifyListeners();

  }
}