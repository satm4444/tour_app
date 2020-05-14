import 'package:tour/model/Product.dart';
import 'package:flutter/material.dart';

//~~~~~~Yo data chai tyo Products like Tokyo Pokhara ko bhitra halnu ko lagi~~~~~////

class Deals with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "pok",
      title: "LakeShore",
      subtitle: "LakeSide",
      description: 'You can do cycling',
      imageURL:
          "https://r-cf.bstatic.com/images/hotel/max1024x768/169/169347935.jpg",
      // "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Himalayan Crown",
      subtitle: "Sarangkot Road",
      description: 'You can do cycling',
      imageURL:
          "https://r-cf.bstatic.com/images/hotel/max1024x768/165/165620960.jpg",
      // "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Golden Lake",
      subtitle: "Kahare LakeSide",
      description: 'You can do cycling',
      imageURL:
          "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162550842.jpg",
      // "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Fewa Dream",
      subtitle: "Kahare LakeSide",
      description: 'You can do cycling',
      imageURL:
          "https://r-cf.bstatic.com/images/hotel/max1024x768/169/169204956.jpg",
      // "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Three Jewels",
      subtitle: "LakeSide Road",
      description: 'You can do cycling',
      imageURL:
          "https://q-cf.bstatic.com/images/hotel/max1024x768/154/154252971.jpg",
      // "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
    ),
    Product(
      id: "pok",
      title: "Eagle Zone",
      subtitle: "LakeSide-6",
      description: "Enjoy the best deals",
      imageURL:
          "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "jap",
      title: "Shinjuku",
      subtitle: "Kabukicho",
      description: "......",
      imageURL:
          'https://r-cf.bstatic.com/images/hotel/max1024x768/103/103549991.jpg',
      //
      // "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "jap",
      title: "Sui Akaska",
      subtitle: "Minato,Tokyo",
      description: "Volcano",
      imageURL:
          "https://q-cf.bstatic.com/images/hotel/max1024x768/232/232234444.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "jap",
      title: "Onsen",
      subtitle: "Shinjuku",
      description: "......",
      imageURL:
          "https://q-cf.bstatic.com/images/hotel/max1024x768/200/200914091.jpg",
      //  "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "jap",
      title: "Hotel Ueno Shin",
      subtitle: "Taito-ku",
      description: "Volcano",
      imageURL:
          "https://q-cf.bstatic.com/images/hotel/max1024x768/160/160487904.jpg",
      //   "https://q-cf.bstatic.com/images/hotel/max1024x768/232/232366779.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "jap",
      title: "Nohga",
      subtitle: "Taito-ku",
      description: "......",
      imageURL:
          "https://r-cf.bstatic.com/images/hotel/max1024x768/207/207695112.jpg",
      //  "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
    ),
    Product(
      id: "jap",
      title: "Nihaonbashi",
      subtitle: "Chuo-ku",
      description: "Volcano",
      imageURL:
          "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "fra",
      title: "Club House",
      subtitle: "Viale Amerigo",
      description: "Volcano",
      imageURL:
          "https://media-cdn.tripadvisor.com/media/photo-w/17/67/d5/07/hotel-club-house.jpg",
      // "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "fra",
      title: "Hotel Stresa",
      subtitle: "Viale Gubbio",
      description: "Volcano",
      imageURL:
          "https://media-cdn.tripadvisor.com/media/photo-w/07/d4/85/3d/hotel-stresa.jpg",
      //  "https://media-cdn.tripadvisor.com/media/photo-w/17/67/d5/07/hotel-club-house.jpg",
      // "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "fra",
      title: "Nord Est",
      subtitle: "Viale Amerigo",
      description: "Volcano",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/07/fe/a1/e1/hotel-nord-est.jpg',
      // "https://media-cdn.tripadvisor.com/media/photo-w/17/67/d5/07/hotel-club-house.jpg",
      // "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "fra",
      title: "Hotel Rubbens",
      subtitle: "Viale Amerigo",
      description: "Volcano",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-o/02/81/5a/56/camera-matrimoniale-hotel.jpg',
      //  "https://media-cdn.tripadvisor.com/media/photo-w/17/67/d5/07/hotel-club-house.jpg",
      // "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "fra",
      title: "Hotel President",
      subtitle: "Viale Tripoli",
      description: "Volcano",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/14/21/ef/4c/pool-night-pic.jpg',
      //  "https://media-cdn.tripadvisor.com/media/photo-w/17/67/d5/07/hotel-club-house.jpg",
      // "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "fra",
      title: "i-SUITE Design",
      subtitle: "Viale Regina",
      description: "Volcano",
      imageURL:
          "https://media-cdn.tripadvisor.com/media/photo-w/1a/3f/5b/d9/i-suite-design-hotel.jpg",
      // "https://media-cdn.tripadvisor.com/media/photo-w/17/67/d5/07/hotel-club-house.jpg",
      // "https://r-cf.bstatic.com/images/hotel/max1024x768/160/160487766.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
    ),
    Product(
      id: "chi",
      title: "JW Marriott",
      subtitle: "Nanjing west",
      description: "Enjoy the best deals",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/1b/50/78/27/exterior.jpg',
      // "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "chi",
      title: "Hotel NUO",
      subtitle: "East Chang",
      description: "Enjoy the best deals",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/1a/d4/5c/0b/exterior.jpg',
      // "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "chi",
      title: "Yangshuo ",
      subtitle: "Jima Village",
      description: "Enjoy the best deals",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/06/ba/d4/f1/yangshuo-mountain-nest.jpg',
      // "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "chi",
      title: "Yangshuo Mountain",
      subtitle: "Gaotian Town",
      description: "Enjoy the best deals",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/14/45/58/ca/riverside-dining-yangshuo.jpg',
      // "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "chi",
      title: "CourtYard",
      subtitle: "Dongsi Sitiao",
      description: "Enjoy the best deals",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-o/03/cc/24/d9/double-happiness-courtyard.jpg',
      //  "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
    Product(
      id: "chi",
      title: "Shangri-La's ",
      subtitle: "Chaoyang District",
      description: "Enjoy the best deals",
      imageURL:
          'https://media-cdn.tripadvisor.com/media/photo-w/09/f0/41/00/horizon-club-lounge-buffet.jpg',
      //  "https://q-cf.bstatic.com/images/hotel/max1024x768/162/162977485.jpg",
      //  "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
    ),
  ];
  List<Product> get items {
    return [..._items]; //--Getter for the listed items--//
  }

  List<Product> findById(String id) {
    return _items.where((product) => product.id == id).toList();
  }
}
