import 'package:flutter/material.dart';

class PlantDetailPage extends StatefulWidget {
  const PlantDetailPage({super.key});

  @override
  State<PlantDetailPage> createState() => _PlantDetailPageState();
}

class _PlantDetailPageState extends State<PlantDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(232, 242, 237, 1),
              ),
            ),
          ),
          Positioned(
            top: -24,
            right: -200,

            child: CircleAvatar(
              radius: 220,
              backgroundColor: Color.fromRGBO(185, 248, 154, 1),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(100),
              //   color: Color.fromRGBO(185, 248, 154, 1),
              // ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height / 1.8,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
