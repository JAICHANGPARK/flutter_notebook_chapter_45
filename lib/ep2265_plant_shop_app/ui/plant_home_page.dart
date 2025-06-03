import 'package:flutter/material.dart';

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
                        backgroundColor: Colors.grey[200]!,
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
                              side: BorderSide(color: Colors.green),
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
                              color: Colors.green,
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
                                      Text("25% Off"),
                                      Text("All Kind of Plants"),
                                      Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(8),
                                        child: Text("Buy Now"),
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
                      height: 170,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            top: 16,
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.green,
                                  )
                                ),

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
            CircleAvatar(radius: 26),
            CircleAvatar(radius: 26),
            CircleAvatar(radius: 26),
            CircleAvatar(radius: 26),
          ],
        ),
      ),
    );
  }
}
