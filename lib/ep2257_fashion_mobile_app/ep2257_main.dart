import 'package:flutter/material.dart';

import 'ui/home/fma_home_page.dart';
import 'ui/login/fma_login_page.dart';

void main() {

  runApp(FashionMobileApp());
}

class FashionMobileApp extends StatelessWidget {
  const FashionMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FmaHomePage(),
    );
  }
}
