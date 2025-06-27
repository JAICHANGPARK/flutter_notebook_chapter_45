import 'package:flutter/material.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned.fill(
            left: 16,
            right: 16,
            bottom: 0,
            top: 32,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 62, child: Placeholder()),
                  Container(height: 120, child: Placeholder()),
                  Text("YOUR TRAVELS"),
                  SizedBox(height: 180, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
