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
            spacing: 12,
            children: [
              Container(
                height: 260,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2022/07/15/18/12/cheese-burger-7323674_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.all(16),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            child: Row(
                              spacing: 6,
                              children: [
                                Icon(Icons.star, size: 16),
                                Text("4.9"),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            child: Text(
                              "Out of Stock",
                              style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Special Spicy Hamburger",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                maxLines: 2,
              ),
              Row(
                spacing: 8,
                children: [
                  Text(
                    "\$9.87",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "\$11.00",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                "Spice Level",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 56,
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          spacing: 6,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.orange[300]!),
                              ),
                              padding: EdgeInsets.all(6),
                              child: Text("😊"),
                            ),
                            Text(
                              "Mild",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          spacing: 6,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              padding: EdgeInsets.all(6),
                              child: Text("😊"),
                            ),
                            Text(
                              "Medium",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          spacing: 6,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              padding: EdgeInsets.all(6),
                              child: Text("😊"),
                            ),
                            Text(
                              "Spicy",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("Extras"),
              Column(
                children: List.generate(
                  5,
                  (idx) => Container(height: 62, child: Placeholder()),
                ),
              ),
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
