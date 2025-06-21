import 'package:flutter/material.dart';

class FmDetailPage extends StatefulWidget {
  const FmDetailPage({super.key});

  @override
  State<FmDetailPage> createState() => _FmDetailPageState();
}

class _FmDetailPageState extends State<FmDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/11/23/15/42/bouquet-1853622_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 16,
            right: 16,
            bottom: 32,
            
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      Expanded(child: Center()),
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),

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
