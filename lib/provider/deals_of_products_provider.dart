import 'package:tour/model/Product.dart';
import 'package:flutter/material.dart';

//~~~~~~Yo data chai tyo Products like Tokyo Pokhara ko bhitra halnu ko lagi~~~~~////

class Deals with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "pokhara1",
      title: "Cycling",
      subtitle: "OnRoad",
      description: 'You can do cycling',
      imageURL: null,
    ),
    Product(
      id: "pokhara2",
      title: "Bunge Jumpning",
      subtitle: "best experience",
      description: "Enjoy the best deals",
      imageURL:
          "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "tokyo1",
      title: "SkyScraper View",
      subtitle: "See big buildings",
      description: "......",
      imageURL:
          "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "tokyo2",
      title: "Mount Fuji",
      subtitle: "Beautiful",
      description: "Volcano",
      imageURL:
          "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
  ];
  List<Product> get items {
    return [..._items]; //--Getter for the listed items--//
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
