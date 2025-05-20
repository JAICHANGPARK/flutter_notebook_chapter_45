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
                  Container(
                    height: 42,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 16,
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(),
                          ),
                          padding: EdgeInsets.all(6),
                          child: Icon(Icons.filter_list),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 140,

                    padding: EdgeInsets.only(left: 16),
                    child: Placeholder(),
                  ),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Search By Category"),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("View All"),
                                ),
                              ],
                            ),
                          ),
                          Container(height: 200, child: Placeholder()),
                        ],
                      ),
                    ),
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
