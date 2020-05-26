//data of our destination

import 'package:tour/model/Product.dart';
import 'package:flutter/material.dart';

//~~~~~~~the Main products(in tiles listview) on the dashboard.dart~~~~//

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "jap",
      title: "Tokyo",
      subtitle: "Japan",
      price: 8000,
      description:
          "Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods. The Imperial Palace sits amid large public gardens. The city's many museums offer exhibits ranging from classical art (in the Tokyo National Museum) to a reconstructed kabuki theater (in the Edo-Tokyo Museum)",
      imageURL:
          "https://pix10.agoda.net/hotelImages/43322/0/0a1ae728c76ec0150a8ccbcd8b5a7ee4.jpg?s=1024x768",
      //   "https://booksandbao.com/wp-content/uploads/2019/02/jezael-melgoza-974061-unsplash-e1567602273865.jpg",
      // imageURL: "https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "pok",
      title: "Pokhara",
      subtitle: "Nepal",
      price: 5000,
      description:
          "Pokhara ticks all the right boxes, with spectacular scenery, adventure activities, and accommodation and food choices galore. Whether you’ve returned from a three-week trek or endured a bus trip from hell, Lakeside Pokhara is the perfect place to recharge your batteries.Pokhara ticks all the right boxes, with spectacular scenery, adventure activities, and accommodation and food choices galore.",
      imageURL:
          "https://cdn.kimkim.com/files/a/content_articles/featured_photos/e3d3cc01f34f5e7f24ac22bff9efc785570a0dee/big-d9d71a9a1eaa48a854eb59564c4d9e36.jpg",
      //"https://www.wallpaperflare.com/static/90/189/98/phewa-lake-sunset-pokhara-nepal-wallpaper.jpg",
      // "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "fra",
      title: "Italy",
      price: 9000,
      subtitle: "France",
      description:
          "Italy, a European country with a long Mediterranean coastline, has left a powerful mark on Western culture and cuisine. Its capital, Rome, is home to the Vatican as well as landmark art and ancient ruins. Other major cities include Florence, with Renaissance masterpieces such as Michelangelo’s David and Brunelleschi's Duomo; Venice, the city of canals; and Milan, Italy’s fashion capital.",
      imageURL:
          "https://clip.cookdiary.net/sites/default/files/wallpaper/drawn-eiffel-tower/377148/drawn-eiffel-tower-italy-377148-4001059.jpg",
      // "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_412,c_fill,g_auto,h_232,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170606121206-italy---travel-destination---shutterstock-517522957.jpg",
      // imageURL: "https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "chi",
      title: "China",
      price: 7000,
      subtitle: "Nanjing",
      description:
          "China boasts a large number of wonderful attractions including antique sites and relics, imposing imperial palaces, delicate water towns, amazing natural wonders, splendid cultural heritage, and diversified folk customs. It will take years to visit all of these attractions, but it is fairly easily to tour the top tourist attractions.",
      imageURL:
          "https://chineseinventions.files.wordpress.com/2016/06/xian-china-city-wallpaper.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "tkp",
      title: "Tikapur",
      price: 4000,
      subtitle: "Kailali",
      description: "Tikapur mero tikapur hamro tikapur !",
      // description:
      //   "China boasts a large number of wonderful attractions including antique sites and relics, imposing imperial palaces, delicate water towns, amazing natural wonders, splendid cultural heritage, and diversified folk customs. It will take years to visit all of these attractions, but it is fairly easily to tour the top tourist attractions.",
      imageURL:
          "https://www.farwestnepal.org/wp-content/uploads/2014/06/DSC_0397.jpg",
      //"https://sfd.susana.org/images/cities/tikapur-image.jpg",
      // "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
  ];
  List<Product> get items {
    return [..._items]; //--Getter for the listed items--//
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  List<Product> get favourites {
    return _items.where((element) => element.isFavourite).toList();
  }
}
