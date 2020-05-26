import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'colors.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, "/bottombar");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenheight = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: screenheight * 0.35,
            ),
            Text(
              "TOUR",
              style: TextStyle(
                  fontSize: 47,
                  fontFamily: "bestfont",
                  color: AppColor.dividerColor),
            ),
            SizedBox(
              height: screenheight * 0.05,
            ),
            SpinKitCircle(
              color: AppColor.dividerColor,
              size: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
