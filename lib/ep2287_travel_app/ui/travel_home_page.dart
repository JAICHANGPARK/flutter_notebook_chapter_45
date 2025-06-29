import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            top: 12,
            child: SafeArea(
              child: Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 62,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(4),
                            child: Row(
                              spacing: 6,
                              children: [
                                CircleAvatar(radius: 26),
                                Column(
                                  spacing: 2,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Hi, Dream",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("Profile settings"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(4),
                            child: Row(
                              spacing: 6,
                              children: [
                                CircleAvatar(radius: 26),
                                Column(
                                  spacing: 2,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Paris",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("Location now"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    padding: EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ORY",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                "from Paris",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LAX",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                "to Los Angeles",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(12),
                  Text(
                    "YOUR TRAVELS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 140,
                    child: Row(
                      spacing: 4,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Total", style: TextStyle(fontSize: 12)),
                              Spacer(),
                              Text(
                                "43",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Countries", style: TextStyle(fontSize: 12)),
                              Spacer(),
                              Text(
                                "19",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Cities", style: TextStyle(fontSize: 12)),
                              Spacer(),
                              Text(
                                "24",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Time", style: TextStyle(fontSize: 12)),
                              Spacer(),
                              Text(
                                "45H",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 54,

                    decoration: BoxDecoration(
                      color: Colors.black,

                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "MORE INFORMATION",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  Gap(12),
                  Text(
                    "TICKETS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 0,
            right: 0,

            child: Center(
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[300]!,
                ),
                child: Row(
                  spacing: 4,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.flight),
                          Text(
                            "Travels",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(radius: 26, backgroundColor: Colors.white),
                    CircleAvatar(radius: 26, backgroundColor: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
