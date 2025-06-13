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
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      spacing: 2,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Hi, Dream👋"),
                  ),
                  SizedBox(height: 52,
                  child: Placeholder(),),
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
