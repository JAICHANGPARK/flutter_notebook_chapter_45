import 'package:flutter/material.dart';

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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
