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
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16,
            children: [
              CircleAvatar(radius: 26),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dream's Kitchen"),
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.grey[200]!,
                      ),
                      child: Text("Cookstro"),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Badge(
                  child: Icon(Icons.notifications),

                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 9,
        height: 72,
        surfaceTintColor: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
        child: Row(
          spacing: 12,
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
                  Icon(
                    Icons.inventory_2_outlined,
                    size: 28,
                    color: Colors.grey,
                  ),
                  Text("Inventory", style: TextStyle(color: Colors.grey)),
                  Gap(4),
                  CircleAvatar(radius: 4, backgroundColor: Colors.transparent),
                ],
              ),
            ),
            Expanded(child: Column(children: [])),
            Expanded(
              child: Column(
                children: [
                  Icon(
                    Icons.room_service_outlined,
                    size: 28,
                    color: Colors.grey,
                  ),
                  Text("Menu", style: TextStyle(color: Colors.grey)),
                  Gap(4),
                  CircleAvatar(radius: 4, backgroundColor: Colors.transparent),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(radius: 14),
                  Text("Profile", style: TextStyle(color: Colors.grey)),
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
