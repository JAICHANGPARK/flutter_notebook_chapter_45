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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.green,
                            ),
                            child: Row(
                              spacing: 6,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                ),
                                Text("3"),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(width: 200, height: 200, child: Placeholder()),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Monstera"), Text("\$240")]),
                      Row(
                        children: List.generate(
                          5,
                          (idx) =>
                              Icon(Icons.star, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ],
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",

                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
