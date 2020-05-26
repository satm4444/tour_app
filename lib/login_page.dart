import 'package:flutter/material.dart';

import 'package:tour/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameCon = new TextEditingController();
  final passCon = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenSIZE = MediaQuery.of(context).size;
    var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;

    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: forheight * 0.10,
                ),
                Center(
                  child: Text(
                    "TOUR",
                    style: TextStyle(
                        fontSize: 47,
                        fontFamily: "Title",
                        color: AppColor.dividerColor),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.02,
                ),
                Center(
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        fontFamily: "bestfont",
                        color: AppColor.loginNowColor),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Center(
                  child: Text(
                    "    If you are an existing user,",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "bestfont",
                        color: AppColor.loginNowSubColor),
                  ),
                ),
                Center(
                  child: Text(
                    "    please register for an account first.",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "bestfont",
                        fontWeight: FontWeight.w600,
                        color: AppColor.loginNowSubColor),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.03,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Container(
                      width: forWidth * 0.7,
                      height: forheight * 0.065,
                      color: Colors.black.withOpacity(0.06),
                      child: TextFormField(
                        style: TextStyle(color: Colors.blue),
                        controller: usernameCon,
                        decoration: InputDecoration(
                          hintText: 'username/email',
                          prefixIcon: Icon(
                            Icons.person,
                            color: AppColor.loginIconColor,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.01,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: Container(
                      width: forWidth * 0.7,
                      height: forheight * 0.065,
                      color: Colors.black.withOpacity(0.06),
                      child: TextFormField(
                        style: TextStyle(color: Colors.red),
                        obscureText: true,
                        controller: passCon,
                        decoration: InputDecoration(
                          hintText: 'password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: AppColor.loginIconColor,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.03,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: GestureDetector(
                      onTap: () {
                        if (usernameCon.text == "satyam" &&
                            passCon.text == "tour") {
                          Navigator.pushReplacementNamed(context, "/load");
                        } else {}
                      },
                      child: Container(
                        height: forheight * 0.064,
                        width: forWidth * 0.38,
                        color: AppColor.loginButonColor,
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: "Heading",
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.008,
                ),
                Center(
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: "SubtextBold",
                      color: Color(0xffDD2A2A),
                      // color: AppColor.loginNowSubColor.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.12,
                ),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: forheight * 0.06,
                      width: forWidth * 0.35,
                      color: Color(0xff3388c3),
                      //  color: AppColor.signupButtonColor.withOpacity(0.9),
                      child: Center(
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(
                              fontSize: 21,
                              fontFamily: "Heading",
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: forheight * 0.009,
                ),
                Center(
                  child: Text(
                    "Connect with other ways",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SubtextBold",
                        color: AppColor.loginNowSubColor.withOpacity(0.8)),
                  ),
                ),
                Center(
                  child: Container(
                    // color: Colors.blue,
                    height: forheight * 0.04,
                    width: forWidth * 0.28,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: forWidth * 0.019,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: Container(
                            height: forheight * 0.03,
                            width: forWidth * 0.06,
                            child: Image.asset(
                              "assets/images/icons/facebook.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: forWidth * 0.02,
                        ),
                        Container(
                          height: forheight * 0.04,
                          width: forWidth * 0.08,
                          child: Image.asset(
                            "assets/images/icons/google.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: forWidth * 0.02,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                            height: forheight * 0.03,
                            width: forWidth * 0.06,
                            child: Image.asset(
                              "assets/images/icons/linkedin.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
