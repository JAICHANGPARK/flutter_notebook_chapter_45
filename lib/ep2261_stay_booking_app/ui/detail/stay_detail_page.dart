import 'package:flutter/material.dart';

class StayDetailPage extends StatefulWidget {
  const StayDetailPage({super.key});

  @override
  State<StayDetailPage> createState() => _StayDetailPageState();
}

class _StayDetailPageState extends State<StayDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("Dream Villas"),
                      Text("Seoul, Republic of Korea"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                ),
              ],
            ),
            Container(
              height: 240,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
