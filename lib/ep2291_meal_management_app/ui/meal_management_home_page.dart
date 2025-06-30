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
      backgroundColor: Color.fromRGBO(254, 254, 254, 1),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 72,
        surfaceTintColor: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.bakery_dining, size: 28),
                  Text("Home"),
                  Gap(4),
                  CircleAvatar(radius: 4),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.inventory_2_outlined, size: 28),
                  Text("Inventory"),
                  Gap(4),
                  CircleAvatar(radius: 4, backgroundColor: Colors.transparent),
                ],
              ),
            ),
            Expanded(child: Column(children: [])),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.room_service_outlined, size: 28),
                  Text("Menu"),
                  Gap(4),
                  CircleAvatar(radius: 4, backgroundColor: Colors.transparent),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(radius: 14),
                  Text("Profile"),
                  Gap(4),
                  CircleAvatar(radius: 4, backgroundColor: Colors.transparent),
                ],
              ),
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
