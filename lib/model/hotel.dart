import 'package:flutter/material.dart';

class Hotel with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final String imageURL;
  final double price;

  Hotel({
    this.id,
    this.price,
    this.subtitle,
    this.title,
    this.description,
    this.imageURL,
  });
}
