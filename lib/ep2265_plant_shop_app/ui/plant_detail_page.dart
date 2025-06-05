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
            right: -220,

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
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(backgroundColor: Colors.white, radius: 26),
                        CircleAvatar(backgroundColor: Colors.white, radius: 26),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Size"),
                              Text("Small"),
                              Text("Humidity"),
                              Text("6-4%"),
                              Text("Light"),
                              Text("Diffused"),
                              Text("Temperature"),
                              Text("18-24 c"),
                            ],
                          )


                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
