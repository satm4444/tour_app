import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tour/colors.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.12))),
                height: 180,
                width: double.infinity,
                child: Image.asset(
                  "assets/profilecover.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 180,
                width: double.infinity,
                color: Colors.white.withOpacity(0.55),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 92,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 13,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 60,
                          width: 60,
                          // color: Colors.red,
                          child: Image.asset(
                            "assets/smile.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        //  color: Colors.green,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Satyam Rawal",
                              style: TextStyle(
                                  fontFamily: "bestfont",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " rawalsatyam018@gmail.com",
                              style: TextStyle(
                                  fontFamily: "bestfont",
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                "My Bookings",
                style: TextStyle(
                    fontFamily: "bestfont",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 175,
              ),
              Text(
                "View all >",
                style: TextStyle(
                  fontFamily: "bestfont",
                  fontSize: 15,
                  color: Color(0xffE30045),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.1),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 70,
                  width: 55,
                  // color: Colors.teal,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.payment,
                        size: 40,
                        color: Colors.green,
                      ),
                      Text(
                        "Payment ",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Method",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 55,
                  // color: Colors.teal,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.rate_review,
                        size: 40,
                        color: Colors.orange,
                      ),
                      Text(
                        "Reviews ",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "posted",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 55,
                  // color: Colors.teal,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Text(
                        "Visited ",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Places",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 55,
                  // color: Colors.teal,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.cancel,
                        size: 40,
                        color: Colors.red,
                      ),
                      Text(
                        "Canceled ",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Bookings",
                        style: TextStyle(
                          fontFamily: "bestfont",
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 10,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.1),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.settings,
                size: 35,
                color: Colors.brown,
                //  color: Colors.black.withOpacity(0.4),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Services",
                style: TextStyle(
                    fontFamily: "bestfont",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColor.addtocartbutton
                    // color: Colors.black.withOpacity(0.5),
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.contacts,
                size: 35,
                color: Colors.blue,
                // color: Colors.black.withOpacity(0.4),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Account Settings",
                style: TextStyle(
                    fontFamily: "bestfont",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColor.addtocartbutton),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(
                LineIcons.sticky_note,
                size: 35,
                // color: Colors.black.withOpacity(0.4),
                color: Colors.teal,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Privacy Policies",
                style: TextStyle(
                    fontFamily: "bestfont",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColor.addtocartbutton),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(Icons.help, size: 35, color: Colors.green
                  // color: Colors.black.withOpacity(0.4),
                  ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Help",
                style: TextStyle(
                    fontFamily: "bestfont",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColor.addtocartbutton),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.question_answer,
                size: 35,
                color: Colors.orange,
                //color: Colors.black.withOpacity(0.4),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Inquiries",
                style: TextStyle(
                    fontFamily: "bestfont",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppColor.addtocartbutton),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
