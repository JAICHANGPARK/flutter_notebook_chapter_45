import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CarParkingHomePage extends StatefulWidget {
  const CarParkingHomePage({super.key});

  @override
  State<CarParkingHomePage> createState() => _CarParkingHomePageState();
}

class _CarParkingHomePageState extends State<CarParkingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  Text("Welcome Back"),
                                  Text("Dreamwalker"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(radius: 28),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Parking Nearby"),
                        Gap(16),
                        Container(height: 48, child: Placeholder()),
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
                            child: Placeholder(),
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
                                    Text("Favorite Space"),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text("See All"),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: List.generate(5, (idx) {
                                    return Container(
                                      height: 140,
                                      margin: EdgeInsets.only(bottom: 16),
                                      child: Placeholder(),
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
          Positioned(bottom: 24, left: 42, right: 42, child: Container()),
        ],
      ),
    );
  }
}
