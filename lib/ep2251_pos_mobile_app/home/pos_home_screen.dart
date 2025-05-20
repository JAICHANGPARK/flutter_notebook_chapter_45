import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class PosHomeScreen extends StatefulWidget {
  const PosHomeScreen({super.key});

  @override
  State<PosHomeScreen> createState() => _PosHomeScreenState();
}

class _PosHomeScreenState extends State<PosHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 251, 247, 1),
                    Color.fromRGBO(255, 251, 247, 1),
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Dream Flutter Bar",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(
                                side: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: TextField(),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Icon(Icons.filter_list),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 140, child: Placeholder()),
                  Row(
                    children: [
                      Text("Search By Category"),
                      TextButton(onPressed: () {}, child: Text("View All")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 92,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome01),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedRestaurant01),
              label: "Restaurants",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedStore01),
              label: "Stores",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedChatting01),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedUser),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
