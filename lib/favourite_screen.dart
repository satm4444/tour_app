import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour/model/Product.dart';
import 'package:tour/provider/products_provider.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final forfav = Provider.of<Products>(context);
    final favdata = forfav.favourites;
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 400,
        child: ListView.builder(
          itemCount: favdata.length,
          itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
            value: favdata[index],
            child: FavItem(),
          ),
        ),
      ),
    );
  }
}

class FavItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Product>(context, listen: false);
    return Scaffold(
      body: Container(
        height: 100,
        width: 50,
        child: Image.network(fromModel.imageURL),
      ),
    );
  }
}
