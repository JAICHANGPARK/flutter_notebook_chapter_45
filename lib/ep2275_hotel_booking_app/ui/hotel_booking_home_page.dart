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
                          backgroundColor: Color.fromRGBO(236, 232, 229, 1),
                          foregroundColor: Colors.black,
                          child: Icon(Icons.menu),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color.fromRGBO(236, 232, 229, 1),
                          foregroundColor: Colors.black,
                          child: Icon(HugeIcons.strokeRoundedSearch01),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color.fromRGBO(236, 232, 229, 1),
                          foregroundColor: Colors.black,
                          child: Icon(HugeIcons.strokeRoundedNotification01),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color.fromRGBO(236, 232, 229, 1),
                          backgroundImage: NetworkImage(
                            "https://thispersondoesnotexist.com/",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Text("Hi, Dream👋", style: TextStyle(fontSize: 28)),
                  ),

                  Container(
                    height: 48,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.orange, width: 2),
                            ),
                            color: Color.fromRGBO(236, 232, 229, 1),
                          ),
                          padding: EdgeInsets.only(left: 2, right: 12),
                          child: Row(
                            spacing: 12,
                            children: [CircleAvatar(), Text("Hiking")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              // side: BorderSide(color: Colors.orange, width: 2),
                            ),
                            color: Color.fromRGBO(236, 232, 229, 1),
                          ),
                          padding: EdgeInsets.only(left: 2, right: 12),
                          child: Row(
                            spacing: 12,
                            children: [CircleAvatar(), Text("Sky Tours")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              // side: BorderSide(color: Colors.orange, width: 2),
                            ),
                            color: Color.fromRGBO(236, 232, 229, 1),
                          ),
                          padding: EdgeInsets.only(left: 2, right: 12),
                          child: Row(
                            spacing: 12,
                            children: [CircleAvatar(), Text("Boat Tours")],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 64,
                            right: 64,
                            top: 8,
                            child: Container(
                              height: 240,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2020/01/20/10/33/room-4779953_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 50,
                            top: 48 + 8,
                            child: Container(
                              height: 240,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 24,
                            right: 24,
                            top: 96 + 8,
                            child: Container(
                              height: 240,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2022/11/22/10/37/house-7609267_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            right: 8,
                            top: 48 * 3 + 8,
                            bottom: 32,
                            child: Container(
                              height: 240,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_1280.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,

                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 30,
                                            sigmaY: 40,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.black.withValues(
                                                alpha: .2,
                                              ),

                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Text(
                                              "Recommended",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 30,
                                            sigmaY: 40,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.black.withValues(
                                                alpha: .2,
                                              ),

                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Icon(
                                              HugeIcons.strokeRoundedFavourite,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 30,
                                        sigmaY: 40,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withValues(
                                            alpha: .2,
                                          ),

                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: 8,
                                          children: [
                                            Text(
                                              "Forest Modern Estate - Modern Villa",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Earth",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star_border,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "4.2 Rating",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "\$120",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "/night",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
