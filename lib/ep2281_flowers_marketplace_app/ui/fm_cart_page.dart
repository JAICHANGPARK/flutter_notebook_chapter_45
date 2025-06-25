import 'package:flutter/material.dart';

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
                    Expanded(child: Text("17 Via Garibaldi, Milano",style: TextStyle(
                      fontSize: 17
                    ),)),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              Expanded(child: Column(
                children: [
                  Container(
                    height: 200,
                    child: Placeholder(),
                  ),
                  Divider(),
                  Container(
                    height: 200,
                    child: Placeholder(),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping"),
                      Text("Free")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping"),
                      Text("Free")
                    ],
                  )
                ],
              )),
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
