import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tour/provider/cart_provider.dart';

class CartItem extends StatelessWidget {
  final String title;
  final String id;
  final double price;
  final String image;
  final int quantity;
  final String productId;
  CartItem(
    this.title,
    this.id,
    this.price,
    this.image,
    this.quantity,
    this.productId,
  );
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cart.removeItem(productId);
      },
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Are you sure?"),
            content: Text("Do you want to remove this item from the cart ?"),
            actions: <Widget>[
              FlatButton(
                child: Text("NO"),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
              FlatButton(
                child: Text("YES"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          ),
        );
      },
      background: Container(
        color: Colors.red,
        child: Text(
          "Delete",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: "bestfont",
            //  fontWeight: FontWeight.bold,
          ),
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 4),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 3),
        child: Container(
          decoration: BoxDecoration(
              // color: Color(0xff020202).withOpacity(0.02),
              border: Border.all(
            color: Colors.black.withOpacity(0.1),
          )),
          height: 100,
          width: double.infinity,
          // color: Colors.orange,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 90,
                  //color: Colors.teal,
                  child: Image.network(image, fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Container(
                  height: 100,
                  width: 110,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "bestfont",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "NPR $price /-",
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: "bestfont",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 17,
              ),
              Container(
                height: 40,
                width: 40,
                //  color: Colors.green,
                child: Center(
                  child: IconButton(
                    iconSize: 18,
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      cart.removeSingleItem(productId);
                    },
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                color: Colors.black.withOpacity(0.1),
                child: Center(
                  child: Text(
                    "$quantity",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "bestfont",
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8)),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                //  color: Colors.green,
                child: Center(
                  child: IconButton(
                    iconSize: 18,
                    icon: Icon(Icons.add),
                    onPressed: () {
                      cart.addItem(productId, price, title, image);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
