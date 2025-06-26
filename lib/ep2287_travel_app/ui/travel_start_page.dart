import 'package:flutter/material.dart';

class TravelStartPage extends StatefulWidget {
  const TravelStartPage({super.key});

  @override
  State<TravelStartPage> createState() => _TravelStartPageState();
}

class _TravelStartPageState extends State<TravelStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: ShapeDecoration(shape: RoundedSuperellipseBorder(),
                color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
