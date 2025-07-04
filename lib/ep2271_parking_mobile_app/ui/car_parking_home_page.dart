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
            top: 16,
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
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Dreamwalker",
                                    style: TextStyle(fontSize: 16),
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
                          child: Icon(HugeIcons.strokeRoundedSearch01),
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
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2023/05/15/19/50/multi-storey-car-park-7995856_1280.jpg",
                                              ),
                                              fit: BoxFit.cover,
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
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2018/04/04/22/53/autos-3291379_1280.jpg",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
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
            bottom: 16,
            left: 32,
            right: 32,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              height: 72,
              padding: EdgeInsets.all(6),
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: double.infinity,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(214, 237, 77, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Row(
                      spacing: 8,
                      children: [
                        Icon(HugeIcons.strokeRoundedHome02),
                        Text("Home", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(HugeIcons.strokeRoundedMaping),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(HugeIcons.strokeRoundedHeartCheck),
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(HugeIcons.strokeRoundedUser),
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
