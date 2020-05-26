import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour/provider/deals_of_products_provider.dart';
import 'package:tour/widgets/deals_item.dart';

class ProductGrid extends StatelessWidget {
  final String id;
  ProductGrid(this.id);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Deals>(context).findById(id);
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      //  padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 3,
          childAspectRatio: 2 / 3),
      itemCount: data.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: data[index],
        child: DealsItem(),
      ),
    );
  }
}
