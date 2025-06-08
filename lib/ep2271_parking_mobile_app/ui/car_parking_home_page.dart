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
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
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
                  Text("Parking Nearby"),
                  Container(height: 48, child: Placeholder()),
                  Expanded(child: SingleChildScrollView(child: Column(children: [
                    Container(
                      height: 240,
                      child: Placeholder(),
                    ),
                    Row(
                      children: [
                        Text("Favorite Space"),
                        TextButton(onPressed: (){}, child: Text("See All")),
                      ],
                    ),
                    Column(
                      children: List.generate(5, (idx){
                        return Container(
                          height: 140,
                          margin: EdgeInsets.only(bottom: 16),
                          child: Placeholder(),
                        );
                      }),
                    )
                  ],),)),

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
