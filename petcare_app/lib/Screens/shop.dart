import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/Screens/dashboardscreen.dart';
import 'package:petcare_app/Screens/grooming.dart';
import 'package:petcare_app/Screens/trainingscreen.dart';
import 'package:petcare_app/Screens/veterenaryscreen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<String> imgs = [
    "assets/images/pets.png",
    "assets/images/foods.png",
    "assets/images/healthy.png",
    "assets/images/toys.png",
    "assets/images/accesory.png",
    "assets/images/cloth.png"
  ];
  List<String> imgnm = [
    "Pets",
    "Foods",
    "Healthy",
    "Toys",
    "Accessories",
    "Clothes"
  ];
  final List<WidgetBuilder> detailPageBuilders = [
    (context) => const VeterenaryScreen(),
    (context) => const GroomingScreen(),
    (context) => const ShopScreen(),
    (context) => const TrainingScreen(),
    (context) => const DashBoardScreen()
  ];
  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    height: 148,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 146, 69, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        )),
                  ),
                  Positioned(
                    left: 30,
                    top: 50,
                    child: Container(
                        height: 21,
                        width: 81,
                        child: Text(
                          "Hello Sarah",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 247, 1),
                          ),
                        )),
                  ),
                  Positioned(
                    left: 30,
                    top: 70,
                    child: Container(
                        height: 21,
                        width: 180,
                        child: Text(
                          "Find your lovable Pets",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 247, 1),
                          ),
                        )),
                  ),
                  Positioned(
                      left: 330,
                      top: 60,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: const Color.fromRGBO(255, 255, 247, 1),
                      )),
                  Positioned(
                    left: 60,
                    top: 140,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 35,
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
                              hintText: "Search Something Here...",
                              hintStyle: const TextStyle(
                                color: Color.fromRGBO(194, 195, 204, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 containers per row
                  crossAxisSpacing: 2.0, // spacing between columns
                  mainAxisSpacing: 2.0, // spacing between rows
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        height: 196,
                        width: 154,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 247, 1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color.fromRGBO(245, 146, 69, 1),
                              width: 10,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0.0, left: 0.0),
                          child: Column(
                            children: [
                              Image.asset(
                                imgs[index],
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            height: 29,
                            width: 106,
                            child: Center(
                              child: Text(
                                imgnm[index],
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                ),
                              ),
                            ),
                          ))
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashBoardScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VeterenaryScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.favorite_outline,
                          color: Color.fromARGB(255, 135, 135, 138),
                        ),
                        Text(
                          "Favorites",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: 48), // This is the space for the floating button
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: Color.fromARGB(255, 135, 135, 138),
                      ),
                      Text(
                        "Time",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),

                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 135, 135, 138),
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
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 30.0,
                backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopScreen()),
                    );
                  },
                  child: const Column(
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
            ),
          ],
        ),
      ),
      floatingActionButton: const SizedBox.shrink(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
