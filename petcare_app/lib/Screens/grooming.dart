import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingScreen extends StatefulWidget {
  const GroomingScreen({super.key});

  @override
  State<GroomingScreen> createState() => _GroomingScreenState();
}

class _GroomingScreenState extends State<GroomingScreen> {
  List<String> imgs = [
    "assets/images/bath.png",
    "assets/images/hair.png",
    "assets/images/nail.png",
    "assets/images/ear.png",
    "assets/images/teeth.png",
    "assets/images/skin.png"
  ];
  List<String> imgnm = [
    "Bathing & Drying",
    "Hair Triming",
    "Nail Trimming",
    "Ear Cleaning",
    "teeth cleaning",
    "skin checkup"
  ];
  TextEditingController searchTextEditingController = TextEditingController();

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Back Button
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 40, top: 50),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 146, 69, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 26,
            width: 26,
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ),
        // Title
        Container(
          margin: const EdgeInsets.only(left: 90, top: 50),
          height: 24,
          width: 102,
          child: Text(
            "Grooming",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 40),
                  height: 99,
                  width: 327,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            height: 52,
                            width: 160,
                            child: RichText(
                              text: TextSpan(
                                text: "60% OFF",
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(255, 255, 247, 1),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '              On hair & spa treatment',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          255, 255, 247, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        height: 90,
                        width: 120,
                        child: Image.asset(
                          "assets/images/veter2.png",
                          height: 90,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  height: 36,
                  width: 315,
                  child: TextFormField(
                    controller: searchTextEditingController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(250, 200, 162, 1),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(250, 200, 162, 1),
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(194, 195, 204, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Our Services",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 containers per row
                  crossAxisSpacing: 8.0, // spacing between columns
                  mainAxisSpacing: 8.0, // spacing between rows
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 169,
                    width: 154,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 247, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 16),
                      child: Column(
                        children: [
                          Image.asset(
                            imgs[index],
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              imgnm[index],
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
