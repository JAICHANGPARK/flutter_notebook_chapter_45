import 'package:flutter/material.dart';

import 'ui/fm_main_page.dart';

void main() {
    runApp(FlowersMarketplaceApp());
}


class FlowersMarketplaceApp extends StatelessWidget {
  const FlowersMarketplaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FmMainPage(),
    );
  }
}
