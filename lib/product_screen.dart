import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//~~~~The PAGE OF THE SELECTED PRODUCT~~~~//

class ProductScreen extends StatefulWidget {
  static const String routeName = "/product_screen";

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String selectedTitle;
  String selectedImage;
  String selectedId;
  String selectedDes;
  List offerFinal;

  @override
  Widget build(BuildContext context) {
    final routeAgrs = ModalRoute.of(context).settings.arguments as Map;
    selectedTitle = routeAgrs['title'];
    selectedImage = routeAgrs['image'];
    selectedId = routeAgrs['id'];
    selectedDes = routeAgrs['des'];

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(
          selectedTitle,
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black),
        ),
        trailing: GestureDetector(
          child: Icon(CupertinoIcons.heart),
          onTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: "product$selectedId",
                    child: Container(
                      width: 275,
                      height: 300,
                      child: Image.network(
                        selectedImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                color: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.add_shopping_cart),
                                onPressed: () {},
                              ),
                              Text(
                                "Book ticket",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                color: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.photo_album),
                                onPressed: () {},
                              ),
                              Text(
                                "Photos",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.orange,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                color: Colors.white,
                                iconSize: 40,
                                icon: Icon(Icons.info),
                                onPressed: () {},
                              ),
                              Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 175,
                  width: 365,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black, spreadRadius: 0.2)
                      ]),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        selectedDes,
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 19),
                      ),
                    ),
                  ),
                ),
              ),

//~~~~~~~BELOW TO BUILD THE DEALS FOR SPECIFIC SELECTED PRODUCT~~~~~//

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Deals",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    // color: Colors.blue,
                    child: Placeholder(),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Placeholder(),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    // color: Colors.blue,
                    child: Placeholder(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    // color: Colors.blue,
                    child: Placeholder(),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: Placeholder(),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    // color: Colors.blue,
                    child: Placeholder(),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Amazing hotels",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                ),
              ),
              Divider(),
              Container(
                height: 170,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/amazing.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
