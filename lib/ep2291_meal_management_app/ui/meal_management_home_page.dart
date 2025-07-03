import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_45/ep2291_meal_management_app/theme.dart';
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 16,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: MealAppColor.accentColor,
                  ),
                  Expanded(
                    child: Column(
                      spacing: 3,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dream's Kitchen",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.grey[200]!,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 3,
                          ),
                          child: Text(
                            "Cookstro",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Badge(child: Icon(Icons.notifications)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: MealAppColor.accentColor,
                    ),
                    child: Text("Go to Orders"),
                  ),
                ],
              ),
            ),
            Container(
              height: 160,
              padding: EdgeInsets.only(left: 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    margin: EdgeInsets.only(
                      right: 0,
                      top: 16,
                      bottom: 16,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .05),
                          blurRadius: 16,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 6,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "No 34621",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Color.fromRGBO(205, 217, 171, 1),
                            ),
                          ],
                        ),
                        Text(
                          "Mon 11:00 am - 11:15 am",
                          style: TextStyle(fontSize: 13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
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
                    "Inventory",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: MealAppColor.accentColor,
                    ),
                    child: Text("Go to Inventory"),
                  ),
                ],
              ),
            ),
            Container(
              height: 320,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          decoration: BoxDecoration(color: Colors.green),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Classic Burger"),
                              Row(
                                children: [
                                  Icon(Icons.local_fire_department),
                                  Text("450 cal"),
                                ],
                              ),
                              Text("Homemade beef culet with signature.."),
                            ],
                          ),
                        ),
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
                    "Menu",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: MealAppColor.accentColor,
                    ),
                    child: Text("Go to Menu"),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                  Icon(
                    Icons.bakery_dining,
                    size: 28,
                    color: MealAppColor.accentColor,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: MealAppColor.accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(4),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: MealAppColor.accentColor,
                  ),
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
        backgroundColor: MealAppColor.accentColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.list_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
