import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.apps),
                      iconSize: 28,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Grab Your"), Text("Dream Getaway")],
            ),
            SizedBox(height: 52, child: Placeholder()),
            Expanded(
              child: Container(decoration: BoxDecoration(color: Colors.blue)),
            ),
            Container(
              margin: EdgeInsets.all(24),
              height: 62,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              padding: EdgeInsets.all(3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(HugeIcons.strokeRoundedHome01),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
