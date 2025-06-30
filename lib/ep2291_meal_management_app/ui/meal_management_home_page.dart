import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MealManagementHomePage extends StatefulWidget {
  const MealManagementHomePage({super.key});

  @override
  State<MealManagementHomePage> createState() => _MealManagementHomePageState();
}

class _MealManagementHomePageState extends State<MealManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 72,
        surfaceTintColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
        child: Row(
          children: [
            Expanded(
              child: Column(children: [Icon(Icons.bakery_dining, size: 28,), Text("Home"),
              Gap(4),
              CircleAvatar(radius: 4,)]),
            ),
            Expanded(
              child: Column(children: [Icon(Icons.bakery_dining, size: 28,), Text("Home"),
                Gap(4),
                CircleAvatar(radius: 4,)]),
            ),
            Expanded(
              child: Column(children: []),
            ),
            Expanded(
              child: Column(children: [Icon(Icons.bakery_dining, size: 28,), Text("Home"),
                Gap(4),
                CircleAvatar(radius: 4,)]),
            ),
            Expanded(
              child: Column(children: [Icon(Icons.bakery_dining, size: 28,), Text("Home"),
                Gap(4),
                CircleAvatar(radius: 4,)]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(32),
        ),
        onPressed: () {},
        child: Icon(Icons.list_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
