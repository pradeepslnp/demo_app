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
  bool isElevated1 = false;
  bool isElevated2 = false;
  bool isElevated3 = false;
  bool isElevated4 = false;

  @override
  Widget build(BuildContext context) {
    setDeviceConfiguration(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("lib/assets/images/setting.png"),
            ),
          ],
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size(0, 35),
            child: SizedBox(
              height: 25,
            ),
          ),
          title: const Row(
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
          backgroundColor: const Color(0xFF6B5AE0),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 0,
              fillColor: const Color(0xFF1A00BE),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "lib/assets/images/1.png",
                  fit: BoxFit.fill,
                ),
              ),
              // padding: EdgeInsets.all(15.0),
              shape: const CircleBorder(),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: mediaWidth,
                  child: CustomPaint(
                      // size: Size(screenWidth * 450, 50),
                      painter: AppBarCurve(),
                      child: const SizedBox.shrink()),
                ),
                const SizedBox(
                  height: 400,
                ),
                SizedBox(
                  height: 500,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    child: Container(
                      color: const Color(0xFF5AE0AE),
                      height: screenHeight * 150,
                      width: mediaWidth,

                      // ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    decoration: const BoxDecoration(
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
                          alignLabelWithHint: true,
                          border: InputBorder.none,
                          hintStyle: const TextStyle(
                              color: Colors.black87, fontSize: 18),
                          suffixIcon:
                              Image.asset("lib/assets/images/search.png"),
                          contentPadding: EdgeInsets.all(5),
                          hintText: 'Search doctor'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 40,
                        top: screenHeight * 30,
                        bottom: screenHeight * 30),
                    child: const Row(
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
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F7FE),
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
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12.0),
                                hintText: 'Enter Name',
                                hintStyle: const TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
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
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12.0),
                                hintText: 'Choose Date & Time',
                                hintStyle: const TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
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
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12.0),
                                hintText: 'Choose Problem',
                                hintStyle: const TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
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
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12.0),
                                hintText: 'Choose Test',
                                hintStyle: const TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
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
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFFF8F7FE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: TextField(
                              expands: false,
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(12.0),
                                hintText: 'Choose Consultation',
                                hintStyle: const TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
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
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.1),
                                    offset: const Offset(-6.0, -6.0),
                                    blurRadius: 16.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: const Offset(6.0, 6.0),
                                    blurRadius: 16.0,
                                  ),
                                ],
                                color: const Color(0xFF6B5AE0),
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
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 35, top: screenHeight * 15),
                            child: Text(
                              "Choose problem ",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: screenWidth * 160,
                            height: screenHeight * 125,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF5AE0AE).withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFF5AE0AE),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 85,
                                        height: 50,
                                        child: Image.asset(
                                            "lib/assets/images/one.png"),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 7, 7, 7)
                                                  .withOpacity(0.1),
                                              offset: const Offset(-6.0, -6.0),
                                              blurRadius: 16.0,
                                            ),
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: const Offset(6.0, 6.0),
                                              blurRadius: 16.0,
                                            ),
                                          ],
                                          color: const Color(0xFF5AE0AE),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, right: 1, bottom: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          isElevated1 = !isElevated1;
                                          print(isElevated1);
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1),
                                          child: Container(
                                            width: screenWidth * 30,
                                            height: screenHeight * 30,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF1E1A34),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Container(
                                                width: 1,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: isElevated1
                                                      ? const Color(0xFF00E6FF)
                                                      : const Color(0xFF1E1A34),
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    isElevated1
                                                        ? BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    -6.0, -6.0),
                                                            blurRadius: 16.0,
                                                          )
                                                        : BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    6.0, 6.0),
                                                            blurRadius: 16.0,
                                                          ),
                                                  ],
                                                ),
                                                // color: Colors.red,
                                              ),
                                            ),
                                            // color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Dental Braces",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: screenWidth * 160,
                            height: screenHeight * 125,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF5AE0AE).withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFF5AE0AE),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 85,
                                        height: 50,
                                        child: Image.asset(
                                            "lib/assets/images/two.png"),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 7, 7, 7)
                                                  .withOpacity(0.1),
                                              offset: const Offset(-6.0, -6.0),
                                              blurRadius: 16.0,
                                            ),
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: const Offset(6.0, 6.0),
                                              blurRadius: 16.0,
                                            ),
                                          ],
                                          color: const Color(0xFF5AE0AE),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, right: 1, bottom: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          isElevated2 = !isElevated2;
                                          print(isElevated2);
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1),
                                          child: Container(
                                            width: screenWidth * 30,
                                            height: screenHeight * 30,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF1E1A34),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Container(
                                                width: 1,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: isElevated2
                                                      ? const Color(0xFF00E6FF)
                                                      : const Color(0xFF1E1A34),
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    isElevated2
                                                        ? BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    -6.0, -6.0),
                                                            blurRadius: 16.0,
                                                          )
                                                        : BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    6.0, 6.0),
                                                            blurRadius: 16.0,
                                                          ),
                                                  ],
                                                ),
                                                // color: Colors.red,
                                              ),
                                            ),
                                            // color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Dental Crown",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: screenWidth * 160,
                            height: screenHeight * 125,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF5AE0AE).withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFF5AE0AE),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 85,
                                        height: 50,
                                        child: Image.asset(
                                            "lib/assets/images/three.png"),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 7, 7, 7)
                                                  .withOpacity(0.1),
                                              offset: const Offset(-6.0, -6.0),
                                              blurRadius: 16.0,
                                            ),
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: const Offset(6.0, 6.0),
                                              blurRadius: 16.0,
                                            ),
                                          ],
                                          color: const Color(0xFF5AE0AE),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, right: 1, bottom: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          isElevated3 = !isElevated3;
                                          print(isElevated3);
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1),
                                          child: Container(
                                            width: screenWidth * 30,
                                            height: screenHeight * 30,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF1E1A34),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Container(
                                                width: 1,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: isElevated3
                                                      ? const Color(0xFF00E6FF)
                                                      : const Color(0xFF1E1A34),
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    isElevated3
                                                        ? BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    -6.0, -6.0),
                                                            blurRadius: 16.0,
                                                          )
                                                        : BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    6.0, 6.0),
                                                            blurRadius: 16.0,
                                                          ),
                                                  ],
                                                ),
                                                // color: Colors.red,
                                              ),
                                            ),
                                            // color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Dental Filling",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: screenWidth * 160,
                            height: screenHeight * 125,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF5AE0AE).withOpacity(0.1),
                                  offset: const Offset(-6.0, -6.0),
                                  blurRadius: 16.0,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(6.0, 6.0),
                                  blurRadius: 16.0,
                                ),
                              ],
                              color: const Color(0xFF5AE0AE),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 85,
                                        height: 50,
                                        child: Image.asset(
                                            "lib/assets/images/four.png"),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color.fromARGB(
                                                      255, 7, 7, 7)
                                                  .withOpacity(0.1),
                                              offset: const Offset(-6.0, -6.0),
                                              blurRadius: 16.0,
                                            ),
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              offset: const Offset(6.0, 6.0),
                                              blurRadius: 16.0,
                                            ),
                                          ],
                                          color: const Color(0xFF5AE0AE),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, right: 1, bottom: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          isElevated4 = !isElevated4;
                                          print(isElevated4);
                                          setState(() {});
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1),
                                          child: Container(
                                            width: screenWidth * 30,
                                            height: screenHeight * 30,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF1E1A34),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(6.0),
                                              child: Container(
                                                width: 1,
                                                height: 1,
                                                decoration: BoxDecoration(
                                                  color: isElevated4
                                                      ? const Color(0xFF00E6FF)
                                                      : const Color(0xFF1E1A34),
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    isElevated4
                                                        ? BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    -6.0, -6.0),
                                                            blurRadius: 16.0,
                                                          )
                                                        : BoxShadow(
                                                            color: const Color(
                                                                    0xFF00E6FF)
                                                                .withOpacity(
                                                                    0.1),
                                                            offset:
                                                                const Offset(
                                                                    6.0, 6.0),
                                                            blurRadius: 16.0,
                                                          ),
                                                  ],
                                                ),
                                                // color: Colors.red,
                                              ),
                                            ),
                                            // color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Anesthesia",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
