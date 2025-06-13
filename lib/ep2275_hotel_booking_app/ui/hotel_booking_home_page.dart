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
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.grey[200],
                        ),
                        Spacer(),
                        CircleAvatar(radius: 26,
                          backgroundColor: Colors.grey[200],),
                        CircleAvatar(radius: 26,
                          backgroundColor: Colors.grey[200],),
                        CircleAvatar(radius: 26,
                          backgroundColor: Colors.grey[200],),
                      ],
                    ),
                  ),
                  Text("Hi, Dream👋"),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 24,
            right: 24,
            child: Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
            ),
          ),
        ],
      ),
    );
  }
}
