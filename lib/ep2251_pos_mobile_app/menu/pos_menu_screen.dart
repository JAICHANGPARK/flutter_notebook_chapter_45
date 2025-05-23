import 'package:flutter/material.dart';


class PosMenuScreen extends StatefulWidget {
  const PosMenuScreen({super.key});

  @override
  State<PosMenuScreen> createState() => _PosMenuScreenState();
}

class _PosMenuScreenState extends State<PosMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],

      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Container(
          child: Row(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
