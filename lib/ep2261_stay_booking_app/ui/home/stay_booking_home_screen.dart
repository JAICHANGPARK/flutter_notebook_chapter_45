import 'package:flutter/material.dart';

class StayBookingHomeScreen extends StatefulWidget {
  const StayBookingHomeScreen({super.key});

  @override
  State<StayBookingHomeScreen> createState() => _StayBookingHomeScreenState();
}

class _StayBookingHomeScreenState extends State<StayBookingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
