import 'package:tour/provider/products_provider.dart';
import 'package:tour/widgets/desty_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

//~~~~~~ Horizontal ListView builder in the dashboard.dart~~~//

class ProductHorizon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context); //provides the data
    final products = loadedProducts.items;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(5),
      itemCount: products.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: DestyItem(), //<<<---Item to be build in list View--,,
      ),
    );
  }
}
