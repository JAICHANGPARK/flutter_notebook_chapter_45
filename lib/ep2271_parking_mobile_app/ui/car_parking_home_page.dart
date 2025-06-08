import 'package:flutter/material.dart';

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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: ShapeDecoration(shape: StadiumBorder(),
                        color: Colors.white),
                        child: Row(
                          children: [
                            CircleAvatar(radius: 28),
                            Column(
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
