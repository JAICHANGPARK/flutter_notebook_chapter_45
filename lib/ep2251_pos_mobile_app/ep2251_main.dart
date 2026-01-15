import 'package:flutter/material.dart';
import 'home/pos_home_screen.dart';


void main() {
  runApp(PosMobileApp());
}

class PosMobileApp extends StatelessWidget {
  const PosMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PosHomeScreen(),
    );
  }
}
