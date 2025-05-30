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
            Container(height: 240, child: Placeholder()),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              maxLines: 3,
            ),
            Row(
              children: [
                Text("Read More"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            Container(
              height: 140,
              child: Placeholder(),
            ),
            Divider(),
            Expanded(child: Placeholder()),
            Container(
              height: 80,
              child: Placeholder(),
            )

          ],
        ),
      ),
    );
  }
}
