import 'package:tour/model/Product.dart';
import 'package:flutter/material.dart';

//~~~~~~Yo data chai tyo Products like Tokyo Pokhara ko bhitra halnu ko lagi~~~~~////

class Deals with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "pok",
      title: "Cycling",
      subtitle: "OnRoad",
      description: 'You can do cycling',
      imageURL:
          "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Cycling",
      subtitle: "OnRoad",
      description: 'You can do cycling',
      imageURL:
          "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Cycling",
      subtitle: "OnRoad",
      description: 'You can do cycling',
      imageURL:
          "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Cycling",
      subtitle: "OnRoad",
      description: 'You can do cycling',
      imageURL:
          "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Cycling",
      subtitle: "OnRoad",
      description: 'You can do cycling',
      imageURL:
          "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Bunge",
      subtitle: "best experience",
      description: "Enjoy the best deals",
      imageURL:
          "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "jap",
      title: "SkyScraper ",
      subtitle: "See big buildings",
      description: "......",
      imageURL:
          "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "jap",
      title: "Mount Fuji",
      subtitle: "Beautiful",
      description: "Volcano",
      imageURL:
          "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "jap",
      title: "SkyScraper ",
      subtitle: "See big buildings",
      description: "......",
      imageURL:
          "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "jap",
      title: "Mount Fuji",
      subtitle: "Beautiful",
      description: "Volcano",
      imageURL:
          "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "jap",
      title: "SkyScraper",
      subtitle: "See big buildings",
      description: "......",
      imageURL:
          "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "jap",
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

  List<Product> findById(String id) {
    return _items.where((product) => product.id == id).toList();
  }
}
