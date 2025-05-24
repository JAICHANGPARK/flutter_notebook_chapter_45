import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FmaLoginPage extends StatefulWidget {
  const FmaLoginPage({super.key});

  @override
  State<FmaLoginPage> createState() => _FmaLoginPageState();
}

class _FmaLoginPageState extends State<FmaLoginPage> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Elevate Your Fashion Style Made Simple"),
          Text(
            'Explore curated trends, personalize your shopping experience and elevate your wardrobe - all in one place. Fashion made just for you!'
          ),
          SmoothPageIndicator(controller: pageController, count: 3),
          Container()

        ],
      ),
    );
  }
}
