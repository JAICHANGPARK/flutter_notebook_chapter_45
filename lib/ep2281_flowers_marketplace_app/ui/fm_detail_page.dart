import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_45/ep2281_flowers_marketplace_app/ui/fm_cart_page.dart';
import 'package:gap/gap.dart';

class FmDetailPage extends StatefulWidget {
  const FmDetailPage({super.key});

  @override
  State<FmDetailPage> createState() => _FmDetailPageState();
}

class _FmDetailPageState extends State<FmDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/11/23/15/42/bouquet-1853622_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 16,
            right: 16,
            bottom: 32,
            top: 16,
            child: SafeArea(
              child: Column(
                spacing: 24,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "BOUQUETS",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Colors.white,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$14.90",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(65, 190, 38, 1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            spacing: 4,
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.star, color: Colors.white, size: 16),
                              VerticalDivider(
                                indent: 4,
                                endIndent: 4,
                                color: Colors.white,
                              ),
                              Text(
                                "135 reviews",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 340,
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      color: Colors.white,
                    ),

                    child: Stack(
                      children: [
                        Positioned(
                          left: 24,
                          top: 24,
                          right: 24,
                          bottom: 24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "A BOUQUET OF",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              Text(
                                "DELICATE PEONIES",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              Gap(12),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                                maxLines: 4,
                                style: TextStyle(height: 2),
                              ),
                              Gap(12),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => FmCartPage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    color: Color.fromRGBO(255, 11, 109, 1),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "ADD TO CART",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 11, 109, 1),
                          ),
                        ),
                        Positioned(
                          top: 24,
                          right: 24,
                          child: Icon(
                            Icons.star,
                            size: 52,
                            color: Color.fromRGBO(255, 11, 109, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
