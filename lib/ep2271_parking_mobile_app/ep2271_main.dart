import 'package:flutter/material.dart';

import 'ui/car_parking_home_page.dart';

void main() {
  runApp(CarParkingMobileApp());
}

class CarParkingMobileApp extends StatelessWidget {
  const CarParkingMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarParkingHomePage(),
    );
  }
}
