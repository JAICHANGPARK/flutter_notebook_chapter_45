import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FmCartPage extends StatefulWidget {
  const FmCartPage({super.key});

  @override
  State<FmCartPage> createState() => _FmCartPageState();
}

class _FmCartPageState extends State<FmCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 72,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 24,
                      left: -16,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Positioned(
                      top: 32,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          "CART",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[200]!,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.home_filled),
                    Expanded(
                      child: Text(
                        "17 Via Garibaldi, Milano",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 160,
                      child: Row(
                        spacing: 16,
                        children: [
                          Container(
                            width: 160,
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              color: Colors.pink,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    "A BOUQUET OF DELICATE PEONIES",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      height: 1,
                                    ),
                                  ),
                                  Gap(8),
                                  Text(
                                    "\$14.90",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  Gap(16),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.grey[100],
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      spacing: 8,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.remove),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Icon(Icons.add),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(height: 200, child: Placeholder()),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Shipping"), Text("Free")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Shipping"), Text("Free")],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                  shape: RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Color.fromRGBO(255, 11, 109, 1),
                ),
                child: Center(
                  child: Text(
                    "CHECKOUT",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
