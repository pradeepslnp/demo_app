import 'package:demo_app/core/app_constant.dart';
import 'package:demo_app/login/custom_paint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    setDeviceConfiguration(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size(0, 35),
            child: SizedBox(
              height: 25,
            ),
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome\n',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal)),
                    TextSpan(
                      text: 'Misty Simon ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
          backgroundColor: Color(0xFF6B5AE0),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 0,
              fillColor: Color(0xFF1A00BE),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "lib/assets/images/1.png",
                  fit: BoxFit.fill,
                ),
              ),
              // padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Stack(children: [
            SizedBox(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenWidth * 50,
                    width: mediaWidth,
                    child: CustomPaint(
                        // size: Size(screenWidth * 450, 50),
                        painter: AppBarCurve(),
                        child: SizedBox.shrink()),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: screenHeight * 500,
            // ),
            Positioned(
              top: 450,
              bottom: 0,
              child:
                  // CustomPaint(
                  // size: Size(mediaWidth, 20),
                  // painter: AppBarCurve2(),
                  // child:
                  Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    child: Container(
                      color: Color(0xFF5AE0AE),
                      height: screenHeight * 150,
                      width: mediaWidth,

                      // ),
                    ),
                  ),
                  // Container(
                  //   width: mediaWidth,
                  //   height: screenHeight * 150,
                  //   color: Color(0xFF5AE0AE),
                  //   child: Text("dggata"),
                  // ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    width: screenWidth * 350,
                    child: TextFormField(
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Image.asset("lib/assets/images/search.png"),
                        hintText: 'Search doctor',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 40,
                        top: screenHeight * 30,
                        bottom: screenHeight * 30),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Book Appointment",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 350,
                    height: screenHeight * 400,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F7FE),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 15,
                              screenHeight * 15,
                              screenWidth * 15,
                              screenHeight * 5),
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                                hintText: 'Enter Name',
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 15,
                              screenHeight * 15,
                              screenWidth * 15,
                              screenHeight * 5),
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                                hintText: 'Choose Date & Time',
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 15,
                              screenHeight * 15,
                              screenWidth * 15,
                              screenHeight * 5),
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                                hintText: 'Choose Problem',
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 15,
                              screenHeight * 15,
                              screenWidth * 15,
                              screenHeight * 5),
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                                hintText: 'Choose Test',
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 15,
                              screenHeight * 15,
                              screenWidth * 15,
                              screenHeight * 5),
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.0),
                                hintText: 'Choose Consultation',
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 15,
                              screenHeight * 15,
                              screenWidth * 15,
                              screenHeight * 5),
                          child: Container(
                              height: 50,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.1),
                                    offset: Offset(-6.0, -6.0),
                                    blurRadius: 16.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(6.0, 6.0),
                                    blurRadius: 16.0,
                                  ),
                                ],
                                color: Color(0xFF6B5AE0),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: SizedBox(
                                width: screenWidth * 300,
                                child: const Text(
                                  "Book Appointment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
