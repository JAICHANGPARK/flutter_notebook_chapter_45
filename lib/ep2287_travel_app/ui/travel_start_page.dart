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
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(42),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ),
              Text("FLY COMFORTABLY,"),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "LAND"),
                    TextSpan(text: "REFRESHED"),
                  ],
                ),
              ),
              Text(
                "personalized advice, simple steps, and smart routines - right when you need them",
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(),
                    Expanded(child: Center())
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
