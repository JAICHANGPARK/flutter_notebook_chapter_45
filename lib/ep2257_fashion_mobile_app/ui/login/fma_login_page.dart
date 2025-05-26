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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2020/10/22/06/09/woman-5674995_1280.jpg",
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withValues(alpha: .1),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                spacing: 16,
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Elevate Your Fashion Style Made Simple",
                    style: TextStyle(fontSize: 32),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Explore curated trends, personalize your shopping experience and elevate your wardrobe - all in one place. Fashion made just for you!',
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(dotHeight: 8, dotWidth: 12),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(132, 104, 250, 1),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(onPressed: () {}, child: Text("Login")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
