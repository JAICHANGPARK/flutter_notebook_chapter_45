import 'package:flutter/material.dart';

import 'ui/plant_home_page.dart';

void main() {
    runApp(PlantShopApp());
}

class PlantShopApp extends StatelessWidget {
  const PlantShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PlantHomePage(),
    );
  }
}
