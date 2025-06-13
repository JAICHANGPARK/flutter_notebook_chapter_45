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
      backgroundColor: Color.fromRGBO(250, 244, 240, 1),
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
                          child: Icon(Icons.menu),
                          foregroundColor: Colors.black,
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          child: Icon(HugeIcons.strokeRoundedSearch01),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black,
                          child: Icon(HugeIcons.strokeRoundedNotification01),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            "https://thispersondoesnotexist.com/",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Hi, Dream👋", style: TextStyle(fontSize: 28)),
                  ),
                  SizedBox(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.orange, width: 2),
                            ),
                            color: Colors.grey[100]!,
                          ),
                          padding: EdgeInsets.only(right: 12),
                          child: Row(
                            spacing: 12,
                            children: [CircleAvatar(), Text("Hiking")],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 52,
            right: 52,
            child: ClipRSuperellipse(
              borderRadius: BorderRadius.circular(42),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  // height: 70,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.grey.withValues(alpha: .9),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
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
