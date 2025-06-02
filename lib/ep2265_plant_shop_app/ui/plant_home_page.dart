import 'package:flutter/material.dart';

class PlantHomePage extends StatefulWidget {
  const PlantHomePage({super.key});

  @override
  State<PlantHomePage> createState() => _PlantHomePageState();
}

class _PlantHomePageState extends State<PlantHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Column(
              children: [
                Row(
                  spacing: 12,
                  children: [
                    CircleAvatar(radius: 24),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Hi, Jaxon👋"), Text("Good Morning")],
                      ),
                    ),
                    CircleAvatar(
                      radius: 24,
                      child: Badge(child: Icon(Icons.notifications_none)),
                    ),
                  ],
                ),
                Text("Nature Plants."),
                Container(height: 200, child: Placeholder()),
              ],
            ),

            Container(height: 72, child: Placeholder()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured plant"),
                  TextButton(onPressed: () {}, child: Text('View All')),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return Container(height: 170, child: Placeholder());
                },

              ),
            ),
          ],
        ),

      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          children: [
            
          ],
        ),
      ),
    );
  }
}
