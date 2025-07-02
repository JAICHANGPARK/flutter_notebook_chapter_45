import 'package:flutter/material.dart';

import 'ui/meal_management_home_page.dart';

void main() {
  runApp(MealManagementApp());
}

class MealManagementApp extends StatelessWidget {
  const MealManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MealManagementHomePage());
  }
}
