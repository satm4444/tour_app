import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = "/search_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
