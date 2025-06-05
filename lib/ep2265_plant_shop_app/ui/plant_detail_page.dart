import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                    spacing: 16,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 42,
                              top: 24,
                              bottom: 24,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Size"),
                                Text(
                                  "Small",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(12),
                                Text("Humidity"),
                                Text(
                                  "6-4%",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(12),
                                Text("Light"),
                                Text(
                                  "Diffused",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(12),
                                Text("Temperature"),
                                Text(
                                  "18-24 c",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
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
                                Text(
                                  "3",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          width: 200,
                          height: 280,
                          child: Placeholder(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Monstera"), Text("\$240")],
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (idx) =>
                              Icon(Icons.star, color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",

                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("Monstera Leaves"),
                  SizedBox(height: 120, child: Placeholder()),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[100]!,
                      ),
                      Spacer(),
                      Container(
                        width: 240,
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.green,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_month),
                            Text("Buy Now"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
