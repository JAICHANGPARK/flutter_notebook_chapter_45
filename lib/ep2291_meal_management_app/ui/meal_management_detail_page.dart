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
                children: [
                  Icon(Icons.arrow_back),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
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
              child: Column(children: []),
            ),
          ),
        ],
      ),
    );
  }
}
