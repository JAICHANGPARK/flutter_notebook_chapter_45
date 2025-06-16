import 'package:flutter/material.dart';

import 'ui/pos_marketing_tools_screen.dart';

void main() {
  runApp(PosMarketingToolsScreen());
}


class PosMobileApp extends StatelessWidget {
  const PosMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PosMarketingToolsScreen(),
    );
  }
}
