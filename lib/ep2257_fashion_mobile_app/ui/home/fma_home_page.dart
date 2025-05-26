import 'package:flutter/material.dart';

class FmaHomePage extends StatefulWidget {
  const FmaHomePage({super.key});

  @override
  State<FmaHomePage> createState() => _FmaHomePageState();
}

class _FmaHomePageState extends State<FmaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(242, 242, 242, 1),
                    Color.fromRGBO(234, 231, 248, 1),

                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(child: Column(children: [])),
        ],
      ),
    );
  }
}
