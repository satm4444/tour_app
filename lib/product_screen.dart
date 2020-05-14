import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour/colors.dart';
import 'package:tour/model/Product.dart';

import 'package:tour/widgets/product_grid_builder.dart';

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

  @override
  Widget build(BuildContext context) {
    final routeAgrs = ModalRoute.of(context).settings.arguments as Map;
    selectedTitle = routeAgrs['title'];
    selectedImage = routeAgrs['image'];
    selectedId = routeAgrs['id'];
    selectedDes = routeAgrs['des'];

    var screenSIZE = MediaQuery.of(context).size;
    //  var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          selectedTitle,
          style: TextStyle(
              fontSize: 19.5,
              fontWeight: FontWeight.w500,
              color: Color(0xff2F2F2F)),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Consumer<Product>(
              builder: (ctx, prod, _) {
                return IconButton(
                  color: Colors.red,
                  icon: Icon(prod.isFavourite
                      ? Icons.favorite
                      : Icons.favorite_border),
                  onPressed: () {
                    prod.toggleIsFavourite();
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
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

                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.lightBlue,
                              Colors.deepPurple,
                            ],
                          ),
                        ),
                        // color: Color(0xff24DE6F),
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
                                "Bookings",
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.pinkAccent,
                              Colors.red,
                            ],
                          ),
                        ),
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.greenAccent,
                              Colors.green,
                            ],
                          ),
                        ),
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
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0, top: 3),
                child: Container(
                  height: 170,
                  width: forWidth * 0.95,
                  //color: Colors.blue,
                  color: Color(0xffFDF2F2).withOpacity(0.8),
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 35,
                      width: forWidth * 0.95,
                      //color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            "Best Package for you !",
                            style: TextStyle(
                                fontFamily: "Heading",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 60),
                            child: Text(
                              "See more >",
                              style: TextStyle(
                                  fontFamily: "Subtextregular",
                                  fontSize: 14,
                                  color: AppColor.buynowbutton,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: forWidth * 0.95,
                      //  color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "NPR 8000/-",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: "bestfont",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: forWidth * 0.95,
                      // color: Colors.pink,
                      child: Row(
                        children: <Widget>[
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
                              child: Text(
                                "BOOK NOW",
                                style: TextStyle(
                                    fontFamily: "Heading",
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 190,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xffFF8C00),
                                  Colors.red,
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "CUSTOMIZE YOUR TRIP",
                                style: TextStyle(
                                    fontFamily: "Heading",
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      // color: Color(0xffF7F4F4),
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                        child: Text(
                      selectedDes,
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "bestfont",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
//~~~~~~~BELOW TO BUILD THE DEALS FOR SPECIFIC SELECTED PRODUCT~~~~~//
              Container(
                height: 12,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.07),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      " Best Hotels",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          fontFamily: "bestfont"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        " more",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffE30045),
                            fontFamily: "bestfont"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 370,
                width: double.infinity,
                // color: Colors.blue,
                child: ProductGrid(selectedId),
              ),
              SizedBox(height: 20),
              Container(
                height: 12,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.07),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      " Discover More Places",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          fontFamily: "bestfont"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.6),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 19,
                        color: Color(0xffE30045),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  child: Image.network(
                    "https://www.unmondeapartager.org/wp-content/uploads/2018/04/1_eiv8ar6Y9sqk_90MC1OpHw.jpeg",
                    // "https://www.livinginluxury.club/category/packagetour.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
//~~~~~~~BELOW TO BUILD THE DEALS FOR SPECIFIC SELECTED PRODUCT~~~~~//
              Container(
                height: 12,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.07),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8),
                child: Text(
                  "Our Parteners",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: "bestfont",
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.5),
                child: Container(
                  height: 40,
                  width: 300,
                  child: Image.asset("assets/parteners.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8),
                child: Text(
                  "© Tour,All rights reserved",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: "bestfont",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
