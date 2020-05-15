import 'package:carousel_pro/carousel_pro.dart';

import 'package:tour/Screens/search_screen.dart';
import 'package:tour/widgets/product_horizon.dart';
import 'package:flutter/material.dart';

//------Main page of the desty app----//

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Image.network(
                    "https://ctl.s6img.com/society6/img/b1sMuHt6R2Hx8pTsa99hI7gkAmo/w_1500/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/19fc4d5ced334072a83bb03465bab5d3/~~/noragami-minimmalist-yato-prints.jpg"),
              ),
              ListTile(
                trailing: Icon(Icons.map),
                title: Text('Search by Map'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.favorite),
                title: Text('My Favourites'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.live_help),
                title: Text('Help & feedback'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                trailing: Icon(Icons.info),
                title: Text('About Desty'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              //----~~~>Main column of this screen<~~~--//
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //^^^^The App bar made using container--//
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      //^^^^decoration of the appbar---//
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.075),
                          offset: Offset(10, 10),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-10, -10),
                          blurRadius: 10,
                        ),
                      ],
                    ),

                    child: Row(
                      //^^^For the leading, title text and trailing of the appbar-----/
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {
                                _scaffoldKey.currentState.openDrawer();
                              }),
                        ),
                        Text(
                          "TOUR", //title text
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SearchScreen.routeName);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => SearchScreen()),
                              // );
                            },
                          ), //trailing icon
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  //^^^--For vertical spcaing--//
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 165,
                    width: double.infinity,
                    child: Carousel(
                      images: [
                        NetworkImage(
                            "https://boardroom.global/wp-content/uploads/2019/11/153167_c0f7f4e4-e1573642833946.jpg"),
                        NetworkImage(
                            "https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                        NetworkImage(
                            "https://basecampadventure.com/wp-content/uploads/2018/07/Everest-Three-Pass-Trek.jpg"),
                        NetworkImage(
                            "https://www.goworldtravel.com/wp-content/uploads/2019/03/climbing-mount-fuji-in-off-season-e1553896677572.jpg"),
                        NetworkImage(
                            "https://i.ytimg.com/vi/V3p7vx8mOqg/maxresdefault.jpg"),
                      ],
                      // animationDuration: Duration(seconds: 1),
                      dotSize: 6.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.black,
                      indicatorBgPadding: 4.0,
                      dotBgColor: Colors.grey.withOpacity(0.0),
                      borderRadius: true,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 12,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.07),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "   Trending Attractions",
                      style: TextStyle(
                        fontFamily: "bestfont",
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 9.0),
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
                SizedBox(height: 5),
                Container(
                  //^^^--This container contains the products(destinaitons) of the desty app--<<<
                  height: 170,
                  width: double.infinity,
                  child: ProductHorizon(), //<<<--Listview of the products--<<
                ),
                SizedBox(height: 15),
                Container(
                  height: 12,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.07),
                ),
                SizedBox(height: 10),
                Text(
                  "    Stories you might like",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "bestfont",
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    //^^^This container is for containing further stuffs that can be added to the screen
                    height: 350,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                // color: Colors.grey.shade100,
                                color: Colors.white,
                                elevation: 0.5,
                                borderRadius: BorderRadius.circular(12),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topLeft,
                                          image: NetworkImage(
                                              "https://upload.wikimedia.org/wikipedia/commons/9/9c/Meili_Snow_Mountain_at_Dusk.jpg"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      child: ListTile(
                                        title: Text(
                                          "Nepal's new mountains.",
                                          style: TextStyle(
                                            fontFamily: "bestfont",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 26,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "There have been news lately that the mount Everest has been divided into....",
                                          style: TextStyle(
                                            fontFamily: "bestfont",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                // color: Colors.grey.shade100,
                                color: Colors.white,
                                elevation: 0.5,
                                borderRadius: BorderRadius.circular(12),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topLeft,
                                          image: NetworkImage(
                                              "https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2020/03/03/yq-francecov2-03032020.jpg?itok=27Sa-B0G&timestamp=1583248793"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      child: ListTile(
                                        title: Text(
                                          "Corona bad for Tourism.",
                                          style: TextStyle(
                                            fontFamily: "bestfont",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 26,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "The number of tourists has drastically decreased in just few months...",
                                          style: TextStyle(
                                            fontFamily: "bestfont",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                // color: Colors.grey.shade100,
                                color: Colors.white,
                                elevation: 0.5,
                                borderRadius: BorderRadius.circular(12),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topLeft,
                                          image: NetworkImage(
                                              "https://cnet4.cbsistatic.com/img/yFIvPIMFevpYAC2UoDWT6YHohlk=/940x0/2020/01/23/bede613c-7860-45ce-90cf-bdef0dd33e3b/header-04.png"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      child: ListTile(
                                        title: Text(
                                          "\"I love Red\" says Devil.",
                                          style: TextStyle(
                                            fontFamily: "bestfont",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 26,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "You get aid only when the devil's get paid !...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            fontFamily: "bestfont",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            child: FittedBox(
                              child: Material(
                                // color: Colors.grey.shade100,
                                color: Colors.white,
                                elevation: 0.5,
                                borderRadius: BorderRadius.circular(12),
                                shadowColor: Color(0x802196F3),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topLeft,
                                          image: NetworkImage(
                                              "https://www.pata.org/wp-content/uploads/2018/08/Akihabara-district.jpg"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      child: ListTile(
                                        title: Text(
                                          "Akihabara really paradise ?",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 26,
                                            fontFamily: "bestfont",
                                          ),
                                        ),
                                        subtitle: Text(
                                          "The most renowned place on earth for anime...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "bestfont",
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            "More Stories...",
                            style: TextStyle(
                                color: Color(0xffE30045),
                                fontWeight: FontWeight.w300,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
