import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class MealManagementDetailPage extends StatefulWidget {
  const MealManagementDetailPage({super.key});

  @override
  State<MealManagementDetailPage> createState() =>
      _MealManagementDetailPageState();
}

class _MealManagementDetailPageState extends State<MealManagementDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2023/01/20/19/41/burger-7732455_1280.jpg",
                  fit: BoxFit.cover,
                  height: 360,
                ),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height - 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Beef burger",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              child: Icon(Icons.favorite),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              size: 18,
                              color: Colors.red,
                            ),
                            Gap(6),
                            Text("450 kcal"),
                            Spacer(),
                            Text("🌶️"),
                            Text("🌶️"),
                            Text("🌶️"),
                          ],
                        ),
                        Text(
                          loremIpsum(paragraphs: 1, words: 30),
                          maxLines: 4,
                          style: TextStyle(height: 1.5),
                        ),
                        Text(
                          "\$14",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gap(16),
                        Container(
                          height: 100,
                          child: Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200]!,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    spacing: 6,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Energy"),
                                      Text(
                                        "749/kcal",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200]!,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    spacing: 6,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Carbs"),
                                      Text(
                                        "36/g",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200]!,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    spacing: 6,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Fats"),
                                      Text(
                                        "44/g",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200]!,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    spacing: 6,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Proteins"),
                                      Text(
                                        "52/g",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
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

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              "Ingredients",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(color: Colors.black87),
                              child: Icon(Icons.apps, color: Colors.white),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                              ),
                              child: Icon(Icons.list, color: Colors.grey),
                            ),
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
