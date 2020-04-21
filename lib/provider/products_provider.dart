//data of our destination

import 'package:tour/model/Product.dart';
import 'package:flutter/material.dart';

//~~~~~~~the Main products(in tiles listview) on the dashboard.dart~~~~//

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "c1",
      title: "Tokyo",
      subtitle: "Japan",
      description:
          "Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods. The Imperial Palace sits amid large public gardens. The city's many museums offer exhibits ranging from classical art (in the Tokyo National Museum) to a reconstructed kabuki theater (in the Edo-Tokyo Museum)",
      imageURL:
          "https://booksandbao.com/wp-content/uploads/2019/02/jezael-melgoza-974061-unsplash-e1567602273865.jpg",
      // imageURL: "https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "c2",
      title: "Pokhara",
      subtitle: "Nepal",
      description:
          "Pokhara ticks all the right boxes, with spectacular scenery, adventure activities, and accommodation and food choices galore. Whether you’ve returned from a three-week trek or endured a bus trip from hell, Lakeside Pokhara is the perfect place to recharge your batteries.Pokhara ticks all the right boxes, with spectacular scenery, adventure activities, and accommodation and food choices galore. Whether you’ve returned from a three-week trek or endured a bus trip from hell, Lakeside Pokhara is the perfect place to recharge your batteries.Pokhara ticks all the right boxes, with spectacular scenery, adventure activities, and accommodation and food choices galore. Whether you’ve returned from a three-week trek or endured a bus trip from hell, Lakeside Pokhara is the perfect place to recharge your batteries.",
      imageURL:
          "https://www.iucn.org/sites/dev/files/styles/850x500_no_menu_article/public/import/img/phewa_lake_ayush_rana.jpg?itok=gB-0lmkh",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "c3",
      title: "Italy",
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
      id: "c4",
      title: "China",
      subtitle: "Nanjing",
      description:
          "China boasts a large number of wonderful attractions including antique sites and relics, imposing imperial palaces, delicate water towns, amazing natural wonders, splendid cultural heritage, and diversified folk customs. It will take years to visit all of these attractions, but it is fairly easily to tour the top tourist attractions.",
      imageURL:
          "https://previews.123rf.com/images/zeksk/zeksk1806/zeksk180600017/103544704-traditional-thai-decorated-buddhist-temple-on-a-mountain-with-jungle-in-the-background-chinese-templ.jpg",
      //"https://cdn.getyourguide.com/img/tour_img-2246117-148.jpg",
      isFavourite: false,
    ),
    Product(
      id: "c5",
      title: "Tikapur",
      subtitle: "Kailali",
      description: "Tikapur mero tikapur hamro tikapur !",
      // description:
      //   "China boasts a large number of wonderful attractions including antique sites and relics, imposing imperial palaces, delicate water towns, amazing natural wonders, splendid cultural heritage, and diversified folk customs. It will take years to visit all of these attractions, but it is fairly easily to tour the top tourist attractions.",
      imageURL: "https://sfd.susana.org/images/cities/tikapur-image.jpg",
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
}
