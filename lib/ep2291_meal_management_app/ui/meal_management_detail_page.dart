import 'package:flutter/material.dart';
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
                children: [
                  Row(children: [Text("Beef burger"), CircleAvatar()]),
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        size: 16,
                        color: Colors.red,
                      ),
                      Text("450 cal"),
                      Spacer(),
                      Text("🌶️"),
                      Text("🌶️"),
                      Text("🌶️"),
                    ],
                  ),
                  Text(loremIpsum(paragraphs: 1, words: 40)),
                  Text("\$14"),
                  Container(height: 160, child: Placeholder()),
                  Row(
                    children: [
                      Text("Ingredients"),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(color: Colors.black87),
                        child: Icon(Icons.apps, color: Colors.white),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.grey[100]),
                        child: Icon(Icons.list, color: Colors.grey),
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
