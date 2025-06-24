import 'package:flutter/material.dart';

class FmCartPage extends StatefulWidget {
  const FmCartPage({super.key});

  @override
  State<FmCartPage> createState() => _FmCartPageState();
}

class _FmCartPageState extends State<FmCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 72,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                  Positioned(
                    top: 32,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        "CART",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.grey[200]!),
              child: Row(
                children: [
                  Icon(Icons.home_filled),
                  Expanded(child: Text("17 Via Garibaldi, Milano")),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
