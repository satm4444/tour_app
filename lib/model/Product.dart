import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String imageURL;
  final double price;
  bool isFavourite;

  Product(
      {this.id,
      this.price,
      this.subtitle,
      this.title,
      this.description,
      this.imageURL,
      this.isFavourite = false});
  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
