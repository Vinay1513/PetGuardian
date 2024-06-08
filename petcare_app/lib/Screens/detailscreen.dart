import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDoctorScreen extends StatefulWidget {
  const DetailDoctorScreen({super.key});

  @override
  State<DetailDoctorScreen> createState() => _DetailDoctorScreenState();
}

class _DetailDoctorScreenState extends State<DetailDoctorScreen> {
  final List<String> title = ["Experience", "Price", "Location"];
  final List<String> text2 = ["11 years", "250", "2.5 Km"];
  final List<Map<String, dynamic>> items = [
    {
      'text': 'Fri, 6',
      'bgcolor': const Color.fromARGB(255, 255, 255, 255),
      'color': Color.fromRGBO(49, 29, 14, 1)
    },
    {
      'text': 'Sat, 7',
      'bgcolor': const Color.fromARGB(255, 255, 255, 255),
      'color': Color.fromRGBO(49, 29, 14, 1)
    },
    {
      'text': 'Sun, 8',
      'bgcolor': const Color.fromRGBO(245, 146, 69, 1),
      'color': const Color.fromARGB(255, 255, 255, 255)
    },
    {
      'text': 'Mon, 9',
      'bgcolor': const Color.fromARGB(255, 255, 255, 255),
      'color': Color.fromRGBO(49, 29, 14, 1)
    },
    {
      'text': 'Tue, 10',
      'bgcolor': const Color.fromRGBO(245, 146, 69, 1),
      'color': const Color.fromARGB(255, 255, 255, 255)
    },
  ];
  final List<Map<String, dynamic>> items2 = [
    {
      'text': '09.00',
      'bgcolor': const Color.fromRGBO(245, 146, 69, 1),
      'color': const Color.fromARGB(255, 255, 255, 255),
    },
    {
      'text': '15.00',
      'bgcolor': const Color.fromARGB(255, 255, 255, 255),
      'color': Color.fromRGBO(49, 29, 14, 1)
    },
    {
      'text': 'Sun, 8',
      'bgcolor': const Color.fromARGB(255, 255, 255, 255),
      'color': Color.fromRGBO(49, 29, 14, 1)
    },
  ];

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Back Button
        Container(
          margin: const EdgeInsets.only(left: 40, top: 50),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 26,
          width: 26,
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ),
        // Title
        Container(
          margin: const EdgeInsets.only(left: 90, top: 50),
          height: 24,
          width: 102,
          child: Text(
            "Veterinary",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        body: Column(
          children: [
            _buildHeader(),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 9),
                  height: 150,
                  width: 480,
                  child: Image.asset("assets/images/Anna2.png",
                      height: 150, width: 480, fit: BoxFit.fill),
                )
              ],
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(
                right: 15,
                top: 27,
                left: 20,
              ),
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 56,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Anna Jhonason",
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  "Veterinary Behavioral",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(
                                        255, 135, 135, 138),
                                  ),
                                )
                              ]))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 72,
                        width: 328,
                        child: ListView.builder(
                            itemCount: title.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(22, 34, 51, 0.08),
                                          offset: Offset(
                                            -5.0,
                                            -5.0,
                                          ),
                                          blurRadius: 30.0,
                                          spreadRadius: -4.0,
                                        ),
                                      ]),
                                  height: 122,
                                  width: 110,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            title[index],
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            text2[index],
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  245, 146, 69, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 328,
                            child: Text(
                              "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 135, 135, 138),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 21,
                        width: 300,
                        child: Row(
                          children: [
                            Text(
                              "Available Days",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                "October, 2023",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromARGB(255, 135, 135, 138),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 328,
                        child: ListView.builder(
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Container(
                                  height: 36,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: items[index]['bgcolor'],
                                      border: Border.all(
                                        color: const Color.fromRGBO(
                                            245, 146, 69, 1),
                                      )),
                                  child: Center(
                                    child: Text(
                                      items[index]['text'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: items[index]['color']),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 21,
                        width: 300,
                        child: Row(
                          children: [
                            Text(
                              "Available Time",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 328,
                        child: ListView.builder(
                            itemCount: items2.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Container(
                                  height: 36,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: items2[index]['bgcolor'],
                                      border: Border.all(
                                        color: const Color.fromRGBO(
                                            245, 146, 69, 1),
                                      )),
                                  child: Center(
                                    child: Text(
                                      items2[index]['text'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: items2[index]['color']),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 32,
                        width: 328,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(252, 219, 193, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: Icon(
                                Icons.map_outlined,
                                color: Color.fromRGBO(163, 97, 46, 1),
                              ),
                            ),
                            Text(
                              "See Location",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(163, 97, 46, 1)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 32,
                        width: 328,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 120.0),
                              child: Text(
                                "Book Now",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
