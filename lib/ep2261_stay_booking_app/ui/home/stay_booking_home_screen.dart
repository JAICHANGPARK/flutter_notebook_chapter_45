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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grab Your",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Dream Getaway",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 52,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: index == 0 ? Colors.black : Colors.grey[200]!,
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(decoration: BoxDecoration(color: Colors.blue)),
            ),
            Container(
              margin: EdgeInsets.all(24),
              height: 64,
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
                    child: Icon(HugeIcons.strokeRoundedDiscoverCircle),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    child: Icon(HugeIcons.strokeRoundedCalendar01),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    child: Icon(HugeIcons.strokeRoundedMail01),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    child: Icon(HugeIcons.strokeRoundedUser),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
