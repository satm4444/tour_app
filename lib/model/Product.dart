import 'package:flutter/material.dart';

////~~~~~~Main model of the data in this Desty App~~~~~///
class Product with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String imageURL;
  bool isFavourite;

  Product(
      {@required this.id,
      @required this.subtitle,
      @required this.title,
      @required this.description,
      @required this.imageURL,
      this.isFavourite = false});
  void toggleIsFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
