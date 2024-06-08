import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Container(
                  height: 148,
                  width: 375,
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
                  left: 30,
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
          )
        ],
      ),
    );
  }
}
