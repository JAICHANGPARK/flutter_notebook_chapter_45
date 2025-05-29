import 'package:flutter/material.dart';

import 'ui/home/stay_booking_home_screen.dart';

void main() {
 runApp(StayBookingApp()) ;
}

class StayBookingApp extends StatelessWidget {
  const StayBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StayBookingHomeScreen(),
    )
    ;
  }
}
