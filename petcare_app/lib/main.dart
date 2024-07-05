import 'package:flutter/material.dart';

import 'package:petcare_app/Screens/spalshscreen.dart';

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
      home: SplashScreen(),
    );
  }
}
