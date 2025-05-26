import 'package:flutter/material.dart';

class FmaHomePage extends StatefulWidget {
  const FmaHomePage({super.key});

  @override
  State<FmaHomePage> createState() => _FmaHomePageState();
}

class _FmaHomePageState extends State<FmaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(242, 242, 242, 1),
                    Color.fromRGBO(242, 242, 242, 1),
                    Color.fromRGBO(234, 231, 248, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 16,
            right: 16,
            top: 24,
            bottom: 24,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Expanded(
                        child: Column(
                          spacing: 6,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My Location", style: TextStyle(fontSize: 12)),
                            Row(
                              spacing: 4,
                              children: [
                                Icon(Icons.location_on_outlined, size: 16),
                                Text(
                                  "Seoul, South Korea",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                      CircleAvatar(backgroundColor: Colors.white, radius: 24),
                      CircleAvatar(radius: 24),
                    ],
                  ),

                  Text("Hello, Dream!"),
                  Text("Explore your luxury fashion style from here."),
                  Container(height: 160, child: Placeholder()),
                  Container(height: 42, child: Placeholder()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feature Brands", style: TextStyle(fontSize: 18)),
                      TextButton(onPressed: () {}, child: Text("See all")),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        return Placeholder();
                      },
                    ),
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
