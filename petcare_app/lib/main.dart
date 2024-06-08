import 'package:flutter/material.dart';
//import 'package:petcare_app/Screens/grooming.dart';
//import 'package:petcare_app/Screens/shop.dart';
import 'package:petcare_app/Screens/trainingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PETGUARDIAN',
      home: TrainingScreen(),
    );
  }
}
