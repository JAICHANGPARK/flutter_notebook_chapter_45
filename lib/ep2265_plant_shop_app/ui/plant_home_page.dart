import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class PlantHomePage extends StatefulWidget {
  const PlantHomePage({super.key});

  @override
  State<PlantHomePage> createState() => _PlantHomePageState();
}

class _PlantHomePageState extends State<PlantHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      CircleAvatar(radius: 24),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Dream 👋",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Good Morning",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[100]!,
                        child: Badge(child: Icon(Icons.notifications_none)),
                      ),
                    ],
                  ),
                  Text(
                    "Nature Plants.",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 200,
                    child: Row(
                      spacing: 12,
                      children: [
                        Container(
                          // height: double.infinity,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Color.fromRGBO(185, 248, 154, 1),
                                width: 2,
                              ),
                            ),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: BorderRadiusGeometry.circular(32),
                              ),
                              color: Color.fromRGBO(185, 248, 154, 1),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 16,
                                  top: 24,
                                  bottom: 24,
                                  right: 16,
                                  child: Column(
                                    spacing: 12,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "25% Off",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("All Kind of Plants"),
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 8,
                                        ),
                                        child: Text(
                                          "Buy Now",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 48,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    padding: EdgeInsets.only(right: 12),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey[200]!,
                        ),
                        Text("Spider Plant"),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured plant",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All')),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      height: 160,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            top: 16,
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Color.fromRGBO(185, 248, 154, 1),
                                    width: 2,
                                  ),
                                ),
                                color: Colors.green[50]!,
                              ),
                              child: Row(
                                children: [
                                  Container(width: 120),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        spacing: 12,
                                        children: [
                                          Text(
                                            "Dracaena Fragrans",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Dracaena fragrans (cornstalk dracaena), is a flowering plant species that is native to tropical Africa, from Sudan south to Mozambique, west to Côte d'Ivoire and southwest to Angola, growing in upland regions at 600–2,250 m (1,970–7,380 ft) altitude",
                                            maxLines: 2,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "\$20.00",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
                                                ),
                                              ),
                                              CircleAvatar(
                                                backgroundColor: Color.fromRGBO(
                                                  92,
                                                  208,
                                                  33,
                                                  1,
                                                ),
                                                child: Icon(Icons.add),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 16,
                            bottom: 12,
                            child: Container(
                              width: 100,
                              child: Image.network(
                                "https://cdn.pixabay.com/photo/2017/01/31/23/03/plant-2027989_1280.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(92, 208, 33, 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(HugeIcons.strokeRoundedHome01),
                  ),
                  Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
                  Gap(4),
                ],
              ),
            ),

            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey[100]!,
              foregroundColor: Colors.grey,
              child: Icon(HugeIcons.strokeRoundedBubbleChatAdd),
            ),
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey[100]!,
              foregroundColor: Colors.grey,
              child: Icon(HugeIcons.strokeRoundedSearch01),
            ),
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey[100]!,
              foregroundColor: Colors.grey,
              child: Icon(HugeIcons.strokeRoundedUser),
            ),
          ],
        ),
      ),
    );
  }
}
