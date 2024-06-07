import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Back Button
        Container(
          margin: const EdgeInsets.only(left: 40, top: 50),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(245, 146, 69, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 26,
          width: 26,
          child: const Center(
            child: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        // Title
        Container(
          margin: const EdgeInsets.only(left: 90, top: 50),
          height: 24,
          width: 102,
          child: Text(
            "Notifications",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(31, 32, 41, 1),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 248, 247, 247),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 20),
                  width: 327,
                  height: 23,
                  child: Text(
                    "Today",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  height: 100,
                  width: 327,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 5),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame1.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame2.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Appointment request accepted",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 20),
                  width: 327,
                  height: 23,
                  child: Text(
                    "25 September",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  height: 140,
                  width: 327,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 5),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame1.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame2.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Appointment request accepted",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame3.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Vaccinate your pet timely",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 20),
                  width: 327,
                  height: 23,
                  child: Text(
                    "15 September",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  height: 140,
                  width: 327,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 5),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame1.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame2.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Appointment request accepted",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame3.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Vaccinate your pet timely",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 20),
                  width: 327,
                  height: 23,
                  child: Text(
                    "21 October",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  height: 100,
                  width: 327,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 5),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame1.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Frame2.png"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 255,
                              child: Text(
                                "Appointment request accepted",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
