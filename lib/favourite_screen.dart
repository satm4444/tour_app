import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(75.0),
          child: Text("Your Favourite destination here"),
        ),
      ),
    );
  }
}
