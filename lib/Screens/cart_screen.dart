import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour/colors.dart';
import 'package:tour/provider/cart_provider.dart' show Cart;
import 'package:tour/provider/order_provider.dart';
import 'package:tour/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final order = Provider.of<Orders>(context);
    var height = MediaQuery.of(context).size.height;
    //  var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: height * .766,
              width: double.infinity,
              //   color: Colors.red,
              child: ListView.builder(
                itemCount: cart.itemCount,
                itemBuilder: (ctx, index) => CartItem(
                  cart.items.values.toList()[index].title,
                  cart.items.values.toList()[index].id,
                  cart.items.values.toList()[index].price,
                  cart.items.values.toList()[index].image,
                  cart.items.values.toList()[index].quantity,
                  cart.items.keys.toList()[index],
                ),
              ),
            ),
            Container(
              height: height * 0.12,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.1)),
              ),
              //  color: Colors.blue,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Total :",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "bestfont",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    //   color: Colors.teal,
                    width: 150,
                    child: Text(
                      // "NPR 120000 /-",
                      "NPR ${cart.totalAmount} /-",
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: "bestfont",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 127,
                    height: 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColor.buynowbutton,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          order.addOrder(
                              cart.items.values.toList(), cart.totalAmount);
                          cart.clearCart();
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              // title: Text(
                              //   "Package added to cart !",
                              //   style: TextStyle(
                              //       fontSize: 20,
                              //       fontFamily: "bestfont"),
                              // ),
                              content: Text(
                                "Order Successful !",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(0.5),
                                    fontFamily: "bestfont"),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("OK"))
                              ],
                            ),
                          );
                        },
                        child: Text(
                          "ORDER NOW",
                          style: TextStyle(
                              fontFamily: "Heading",
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
