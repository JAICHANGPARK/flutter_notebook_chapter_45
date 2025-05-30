import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_45/ep2251_pos_mobile_app/menu/pos_menu_screen.dart';
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
                                side: BorderSide(color: Colors.grey[300]!),
                              ),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 0,
                                  vertical: 12,
                                ),
                                hintText: "Search Something",
                                hintStyle: TextStyle(fontSize: 14),
                                icon: Icon(Icons.search),
                                iconColor: Colors.orange,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          padding: EdgeInsets.all(6),
                          child: Icon(Icons.filter_list, color: Colors.orange),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 150,

                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 280,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[200]!),
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Color.fromRGBO(255, 247, 232, 1),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  spacing: 12,
                                  children: [
                                    Row(
                                      spacing: 12,
                                      children: [
                                        Text(
                                          "Order #33323",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 3,
                                          ),
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.red[50]!,
                                          ),
                                          child: Text(
                                            "Delivered",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      spacing: 12,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey[100]!,
                                          ),
                                          padding: EdgeInsets.all(6),
                                          child: Text("🍔"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey[100]!,
                                          ),
                                          padding: EdgeInsets.all(6),
                                          child: Text("🍕"),
                                        ),
                                        Text(
                                          "2 Items",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Spacer(),
                                        Text(
                                          "\$9.87",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Divider(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    Icon(Icons.access_time_outlined, size: 16),
                                    Text("10 Minutes Ago"),
                                    Spacer(),
                                    Icon(Icons.grid_on_outlined, size: 16),
                                    Text("Table 12"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Search By Category",
                                  style: TextStyle(fontSize: 17),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("View All"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            height: 220,
                            child: Column(
                              spacing: 20,
                              children: [
                                Expanded(
                                  child: Row(
                                    spacing: 12,
                                    children:
                                        List.generate(
                                          4,
                                          (idx) => Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: Colors.grey[300]!,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                spacing: 8,
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 48,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[50]!,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color:
                                                            Colors
                                                                .blueGrey[100]!,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "🍕",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text("Pizza"),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).toList(),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    spacing: 12,
                                    children:
                                        List.generate(
                                          4,
                                          (idx) => Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: Colors.grey[300]!,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                spacing: 8,
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 48,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[50]!,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color:
                                                            Colors
                                                                .blueGrey[100]!,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "🍕",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text("Pizza"),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount: 10,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 12,
                                    childAspectRatio: .8,
                                  ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => PosMenuScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey[300]!,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(6),
                                                topRight: Radius.circular(6),
                                              ),
                                              child: Image.network(
                                                "https://cdn.pixabay.com/photo/2022/07/15/18/12/cheese-burger-7323674_1280.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            spacing: 6,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Special Spicy Hamburger",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                              Row(
                                                spacing: 12,
                                                children: [
                                                  Text(
                                                    "\$9.87",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.orange,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.grey[200]!,
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.all(4),
                                                    child: Icon(
                                                      Icons.remove,
                                                      size: 12,
                                                    ),
                                                  ),
                                                  Text("1"),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color:
                                                            Colors.grey[200]!,
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.all(4),
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
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
