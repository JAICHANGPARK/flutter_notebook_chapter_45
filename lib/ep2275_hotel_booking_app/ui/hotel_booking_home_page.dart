import 'package:flutter/material.dart';

class HotelBookingHomePage extends StatefulWidget {
  const HotelBookingHomePage({super.key});

  @override
  State<HotelBookingHomePage> createState() => _HotelBookingHomePageState();
}

class _HotelBookingHomePageState extends State<HotelBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Column(children: [])),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
