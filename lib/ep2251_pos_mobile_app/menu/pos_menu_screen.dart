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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
      bottomNavigationBar: Container(
        height: 80,
        child: Container(
          color: Colors.grey,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200]!,
                  border: Border.all(color: Colors.grey),
                ),
                child: Icon(Icons.remove, color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
