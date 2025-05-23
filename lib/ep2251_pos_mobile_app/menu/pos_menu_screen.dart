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
          // color: Colors.grey,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey[300]!)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[50]!,
                  border: Border.all(color: Colors.grey[300]!),
                ),
                padding: EdgeInsets.all(5),
                child: Icon(Icons.remove, color: Colors.orange),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[50]!,
                  border: Border.all(color: Colors.grey[300]!),
                ),
                padding: EdgeInsets.all(5),
                child: Icon(Icons.remove, color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
