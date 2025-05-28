import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

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
            top: 32,
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

                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 24,
                        child: Icon(Icons.search),
                      ),
                      CircleAvatar(radius: 24),
                    ],
                  ),
                  Gap(42),

                  Text(
                    "Hello, Dream!",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Gap(6),
                  Text("Explore your luxury fashion style from here."),
                  Gap(20),
                  Container(
                    height: 140,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Gap(16),
                  Container(
                    height: 42,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Container(
                            width: 82,
                            margin: EdgeInsets.only(right: 12),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.deepPurpleAccent,
                            ),
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        }
                        return Container(
                          margin: EdgeInsets.only(right: 12),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            spacing: 6,
                            children: [CircleAvatar(radius: 12), Text("Shop")],
                          ),
                        );
                      },
                    ),
                  ),
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Feature Brands",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("See all")),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: .7,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          spacing: 6,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orange,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2025/03/12/09/59/fashion-9464875_1280.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 12,
                                      top: 12,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.red,
                                        child: Icon(Icons.favorite),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Celeb Approved Print",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "New Season",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 12,
            right: 12,
            bottom: 16,
            child: Container(
              height: 62,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.deepPurpleAccent,
                    ),
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      spacing: 12,
                      children: [
                        Icon(HugeIcons.strokeRoundedHome01),
                        Text("Home"),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.grey[100]!,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: Badge(
                      child: Icon(HugeIcons.strokeRoundedShoppingCart01),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(HugeIcons.strokeRoundedUser),
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
