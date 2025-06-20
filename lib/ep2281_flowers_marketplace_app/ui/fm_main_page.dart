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
      backgroundColor: Color.fromRGBO(234, 125, 151, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 52, 16, 16),
            child: Row(
              children: [
                Text(
                  "MENU",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    decorationThickness: 1.5,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_2),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedSuperellipseBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Column(
                  children: [
                    SizedBox(height: 120, child: Placeholder()),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8
                        ),
                        itemBuilder: (context, index) {
                          return Placeholder();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
