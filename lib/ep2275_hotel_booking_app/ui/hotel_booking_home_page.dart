import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
                  SizedBox(height: 52, child: Placeholder()),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 42,
            right: 42,
            child: ClipRSuperellipse(
              borderRadius: BorderRadius.circular(42),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 30),
                child: Container(
                  // height: 70,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 32,
                        child: Icon(HugeIcons.strokeRoundedHome01),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 32,
                        child: Icon(HugeIcons.strokeRoundedCalendar01),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 32,
                        child: Icon(HugeIcons.strokeRoundedFavourite),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 32,
                        child: Icon(HugeIcons.strokeRoundedMail01),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
