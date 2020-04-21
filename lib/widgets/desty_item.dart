import 'package:tour/model/Product.dart';
import 'package:tour/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//---This is a widget---//
// TILE
//here i have designed the layout of what our destination product(in tiles listview) will look like in the main page

class DestyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedProducts = Provider.of<Product>(context,
        listen: false); //provides the data type of the model
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductScreen.routeName, arguments: {
              "title": selectedProducts.title,
              "image": selectedProducts.imageURL,
              "id": selectedProducts.id,
              "des": selectedProducts.description,
            });
          },
          child: Stack(
            //^^^Stack for the desired overlapping layout--//
            children: <Widget>[
              Container(
                height: 220,
                width: 140,
                child: Hero(
                  tag: "product${selectedProducts.id}",
                  child: Image.network(
                    selectedProducts
                        .imageURL, //<<--Place for images to be placed from the provider//but actually from data model
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                //^^^This widget is used here to control the position of the clidren widget of stack--//

                left: 10, //positioning value
                bottom: 10, //positioning value
                child: Row(
                  //^^^This Row is positioned bottom left corner of the parent stack--//
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          selectedProducts
                              .title, //<<---data through provider--<<
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          selectedProducts
                              .subtitle, //<<---data through provider--<<
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
