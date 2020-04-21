import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 23, bottom: 10),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                            "https://i.ytimg.com/vi/V3p7vx8mOqg/maxresdefault.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140.0, left: 115),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/9f/17/a2/9f17a234e7879e10a3d033ea0492329f.jpg"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Done J",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 26),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "done.conkie16@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 19),
                      ),
                    ),
                  ),
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    //^^^^decoration of the appbar---//
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade100,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.075),
                        offset: Offset(-10, -10),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-10, -10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Address: Hell",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                  ),
                  width: double.infinity,
                  height: 100,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
