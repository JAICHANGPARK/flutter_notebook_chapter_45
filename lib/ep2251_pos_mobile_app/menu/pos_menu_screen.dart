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
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
        title: Text("Menu Item"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 280, child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
              Text("Special Spicy Hamburger"),
              Text("subtitle"),
              Text("subtitle"),
              Text("Spice Level"),
              SizedBox(height: 72, child: Placeholder()),
              Text("Extras"),
              Column(
                children: List.generate(5, (idx)=> Container(height: 62,
                child: Placeholder(),)),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Container(
          // color: Colors.grey,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey[300]!)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                child: Icon(Icons.add, color: Colors.orange),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Text(
                  "Add to Order - \$11.00",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
