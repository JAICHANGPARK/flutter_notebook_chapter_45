import 'package:flutter/material.dart';

import 'ui/hotel_booking_home_page.dart';

void main() {
  runApp(HotelBookingApp());
}

class HotelBookingApp extends StatelessWidget {
  const HotelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelBookingHomePage(),
    );
  }
}
