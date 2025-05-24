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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 12,
          children: [
            Expanded(child: Container()),
            Text("Elevate Your Fashion Style Made Simple",style: TextStyle(
              fontSize: 32
            ),),
            Text(
              'Explore curated trends, personalize your shopping experience and elevate your wardrobe - all in one place. Fashion made just for you!',
              style: TextStyle(
                
              ),
            ),
            SmoothPageIndicator(controller: pageController, count: 3),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(132, 104, 250, 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 12),
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
              children: [
                Text("Already have an account?"),
                TextButton(onPressed: () {}, child: Text("Login")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
