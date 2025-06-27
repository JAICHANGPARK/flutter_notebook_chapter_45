import 'package:flutter/material.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned.fill(
            left: 16,
            right: 16,
            bottom: 0,
            top: 32,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 62, child: Placeholder()),
                  Container(height: 120, child: Placeholder()),
                  Text("YOUR TRAVELS"),
                  SizedBox(height: 180, child: Placeholder()),
                  Container(
                    height: 62,
                    color: Colors.black,
                    child: Placeholder(),
                  ),
                  Text("TICKETS"),
                  Expanded(child: Placeholder()),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 0,
            right: 0,

            child: Center(
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.grey[200]!,
                ),
                child: Row(
spacing: 4,
                  mainAxisSize: MainAxisSize.min,
                  children: [CircleAvatar(
                    radius: 26,
                  ), CircleAvatar(radius: 26,), CircleAvatar(radius: 26,)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
