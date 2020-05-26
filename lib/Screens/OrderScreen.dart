import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour/provider/order_provider.dart' show Orders;
import 'package:tour/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context).orders;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Your Orders"),
      ),
      //  drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, i) => OrderItem(orderData[i]),
        itemCount: orderData.length,
      ),
    );
  }
}
