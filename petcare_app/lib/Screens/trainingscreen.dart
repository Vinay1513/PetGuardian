import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  List<String> imgs = [
    "assets/images/train1.png",
    "assets/images/train2.png",
    "assets/images/train3.png",
    "assets/images/train4.png",
    "assets/images/train5.png",
  ];

  List<Map<String, dynamic>> items = [
    {
      'text': "Obedience Courses",
      'subtitle': "By Jhon Smith",
      'points': '4.9',
      'no': '(335)'
    },
    {
      'text': "Specialty Classes & Workshops",
      'subtitle': "By Duke Fuzzington",
      'points': '5.0',
      'no': '(500)'
    },
    {
      'text': "Puppy Kindergarten and Playgroups",
      'subtitle': "By Sir Fluffington",
      'points': '5.0',
      'no': '(500)'
    },
    {
      'text': "Canine Good Citizen Test",
      'subtitle': "By Baron Fuzzypaws",
      'points': '4.8',
      'no': '(220)'
    },
    {
      'text': "Therapy Dogs",
      'subtitle': "By Duke Fuzzington",
      'points': '5.0',
      'no': '(500)'
    },
  ];

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(left: 40, top: 50),
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 146, 69, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 26,
            width: 26,
            child: Center(
              child: Icon(Icons.arrow_back, color: Colors.white, size: 16),
            ),
          ),
        ),
        // Title
        Container(
          margin: const EdgeInsets.only(left: 90, top: 50),
          height: 24,
          width: 102,
          child: Text(
            "Training",
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
              ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 129,
                    width: 327,
                    margin: EdgeInsets.only(top: 30, left: 40, right: 40),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 247, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgs[index],
                          height: 94,
                          width: 90,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                items[index]['text'],
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                              Text(
                                items[index]['subtitle'],
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  Text(items[index]['points']),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(items[index]['no']),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
