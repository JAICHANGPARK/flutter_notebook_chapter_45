import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class CarParkingHomePage extends StatefulWidget {
  const CarParkingHomePage({super.key});

  @override
  State<CarParkingHomePage> createState() => _CarParkingHomePageState();
}

class _CarParkingHomePageState extends State<CarParkingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(
                            right: 32,
                            left: 2,
                            bottom: 2,
                            top: 2,
                          ),
                          child: Row(
                            spacing: 12,
                            children: [
                              CircleAvatar(radius: 26),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome Back",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Dreamwalker",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Parking Nearby",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(16),
                        Container(
                          height: 44,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(49, 49, 49, 1),
                                ),
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: Center(
                                  child: Text(
                                    "All Zones",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: Center(
                                  child: Text(
                                    "Zone A",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: Center(
                                  child: Text(
                                    "Zone B",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: Center(
                                  child: Text(
                                    "Zone C",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(220, 220, 220, 1),
                                ),
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: Center(
                                  child: Text(
                                    "Zone D",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            height: 240,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 240,
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.only(right: 12),
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 8,

                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: RoundedSuperellipseBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            color: Colors.grey,
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                right: 12,
                                                top: 12,
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 8,
                                                  ),
                                                  decoration: ShapeDecoration(
                                                    shape: StadiumBorder(),
                                                    color: Color.fromRGBO(
                                                      214,
                                                      237,
                                                      77,
                                                      1,
                                                    ),
                                                  ),
                                                  child: Text("35 free spaces"),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Seoul Gangnam Parking",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("Gangnam Tower"),
                                      Text(
                                        "\$9.99/hour",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          Gap(16),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Favorite Space",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text("See All"),
                                    ),
                                  ],
                                ),
                                Gap(12),
                                Column(
                                  children: List.generate(5, (idx) {
                                    return Container(
                                      height: 140,
                                      margin: EdgeInsets.only(bottom: 16),
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                        ),
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        spacing: 12,
                                        children: [
                                          Container(
                                            width: 110,
                                            decoration: ShapeDecoration(
                                              shape: RoundedSuperellipseBorder(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                              ),
                                              color: Colors.grey,
                                            ),
                                          ),

                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Dream Square",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    "1235-12321 Dream Streat",
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 12,
                                                              vertical: 8,
                                                            ),
                                                        decoration:
                                                            ShapeDecoration(
                                                              shape:
                                                                  StadiumBorder(),
                                                              color:
                                                                  Color.fromRGBO(
                                                                    214,
                                                                    237,
                                                                    77,
                                                                    1,
                                                                  ),
                                                            ),
                                                        child: Text(
                                                          "35 free spaces",
                                                        ),
                                                      ),
                                                      CircleAvatar(
                                                        radius: 18,
                                                        backgroundColor:
                                                            Colors
                                                                .limeAccent[100],
                                                        foregroundColor:
                                                            Colors.black,
                                                        child: Icon(
                                                          Icons.favorite_border,
                                                          size: 18,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ],
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
            bottom: 24,
            left: 32,
            right: 32,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              height: 64,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(214, 237, 77, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Row(
                      children: [
                        Icon(HugeIcons.strokeRoundedHome02),
                        Text("Home"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
