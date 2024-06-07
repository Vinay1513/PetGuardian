import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VeterenaryScreen extends StatefulWidget {
  const VeterenaryScreen({super.key});

  @override
  State<VeterenaryScreen> createState() => _VeterenaryScreenState();
}

class _VeterenaryScreenState extends State<VeterenaryScreen> {
  final List<String> images = [
    "assets/images/veter3.png",
    "assets/images/vaccine.png",
    "assets/images/behav.png",
    "assets/images/dentist.png"
  ];
  final List<String> title = [
    "Vaccinations",
    "Operations",
    "Behaviorals",
    "Dentistry"
  ];
  final List<String> img2 = [
    "assets/images/Anna.png",
    "assets/images/dr_vernon.png"
  ];
  final List<String> title2 = ["Dr. Anna Johanson", "Dr. Vernon Chwe"];
  final List<String> subtitle = ["Veterinary Behavioral", "Veterinary Surgery"];
  final List<IconData> icon = [Icons.star_border, Icons.location_on_outlined];
  final List<String> dist = ["1", "1.5"];
  final List<String> star = ["4.8", "4.9"];

  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 248, 247, 247),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 40),
                  height: 23,
                  child: Icon(
                    Icons.location_on_outlined,
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "London, UK",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 40),
              height: 99,
              width: 327,
              decoration: const BoxDecoration(
                color: const Color.fromRGBO(245, 146, 69, 1),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          height: 52,
                          width: 180,
                          child: Text(
                            "Lets Find Specialist Doctor for Your Pet!",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ))
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 90,
                      width: 120,
                      child: Image.asset(
                        "assets/images/veter2.png",
                        height: 90,
                        width: 120,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 20),
                  child: Text(
                    "Our Services",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 140.0),
                  child: Text(
                    "See All",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(194, 195, 204, 1)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              width: 327,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 35),
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Image.asset(
                          images[index],
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 10.0, bottom: 30),
                        child: Text(title[index],
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(245, 146, 69, 1),
                            )),
                      )
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 5),
                  child: Text(
                    "Best Specialists Nearby",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 70),
              height: 400,
              width: 350,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: img2.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 122,
                          width: 327,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(children: [
                            Image.asset(img2[index]),
                            Container(
                              height: 87,
                              width: 192,
                              child: Column(children: [
                                Text(
                                  title2[index],
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  subtitle[index],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                        194,
                                        195,
                                        204,
                                        1,
                                      )),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        icon[0],
                                        color: const Color.fromRGBO(
                                            245, 146, 69, 1),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: Text(
                                          star[index],
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                194,
                                                195,
                                                204,
                                                1,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Icon(
                                          icon[1],
                                          color: const Color.fromRGBO(
                                              245, 146, 69, 1),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: Text(
                                          dist[index],
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                194,
                                                195,
                                                204,
                                                1,
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            )
                          ]),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 82.0,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: const Color.fromARGB(255, 135, 135, 138),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_outline,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      Text(
                        "Favorites",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 48),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: const Color.fromARGB(255, 135, 135, 138),
                      ),
                      Text(
                        "Time",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: const Color.fromARGB(255, 135, 135, 138),
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromRGBO(245, 146, 69, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.white),
                    Text(
                      "Shop",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          const SizedBox.shrink(), // Hide the floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
