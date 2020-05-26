import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour/Screens/product_screen.dart';
import 'package:tour/model/Product.dart';

class DestyItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSIZE = MediaQuery.of(context).size;
    var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;
    final selectedProducts = Provider.of<Product>(
      context,
    );
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0.0),
      child: Container(
        //  height: forheight * 1.0,
        width: forWidth * .3,

        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductScreen.routeName,
                arguments: selectedProducts.id);
          },
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(2),
                  topRight: Radius.circular(2),
                ),
                child: Container(
                  height: forheight * 0.185,
                  width: 100.4,
                  child: Hero(
                    tag: "product${selectedProducts.id}",
                    child: Image.network(selectedProducts.imageURL,
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0.2),
                child: Container(
                  width: forWidth * .268,
                  height: forheight * 0.075,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.06)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                height: 20,
                                // color: Colors.blue,
                                child: Flexible(
                                  child: Text(
                                    selectedProducts.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "bestfont",
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Flexible(
                                child: Text(
                                  selectedProducts.subtitle,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "bestfont",
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          iconSize: 22,
                          color: Colors.red,
                          icon: Icon(selectedProducts.isFavourite
                              ? Icons.favorite
                              : Icons.favorite_border),
                          onPressed: () {
                            selectedProducts.toggleIsFavourite();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // color: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
