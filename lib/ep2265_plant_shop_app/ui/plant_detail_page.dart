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
        ],
      ),
    );
  }
}
