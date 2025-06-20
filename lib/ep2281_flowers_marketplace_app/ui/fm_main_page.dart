import 'package:flutter/material.dart';

class FmMainPage extends StatefulWidget {
  const FmMainPage({super.key});

  @override
  State<FmMainPage> createState() => _FmMainPageState();
}

class _FmMainPageState extends State<FmMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff1f6d),
      body: Column(
        children: [
          Row(children: []),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
