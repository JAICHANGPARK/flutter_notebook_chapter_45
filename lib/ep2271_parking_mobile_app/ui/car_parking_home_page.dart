import 'package:flutter/material.dart';

class CarParkingHomePage extends StatefulWidget {
  const CarParkingHomePage({super.key});

  @override
  State<CarParkingHomePage> createState() => _CarParkingHomePageState();
}

class _CarParkingHomePageState extends State<CarParkingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: SafeArea(
          child: Column(children: [
          
          ],),
        )),
        Positioned(bottom: 24, left: 42, right: 42, child: Container()

        ),


      ],
    );
  }
}
