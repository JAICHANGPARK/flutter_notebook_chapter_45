import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PosMarketingToolsScreen extends StatefulWidget {
  const PosMarketingToolsScreen({super.key});

  @override
  State<PosMarketingToolsScreen> createState() =>
      _PosMarketingToolsScreenState();
}

class _PosMarketingToolsScreenState extends State<PosMarketingToolsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white.withValues(alpha: .2),
                    foregroundColor: Colors.white,
                    child: Icon(Icons.keyboard_arrow_left, size: 24),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Marketing Tools",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white.withValues(alpha: .2),
                    foregroundColor: Colors.white,
                    child: Icon(Icons.add, size: 24),
                  ),
                ],
              ),
              Gap(4),
              Text(
                "Campaign Builder",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Container(
                height: 200,
                child: Row(
                  spacing: 16,
                  children: [
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Campaign',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text("See All"),
                  ),
                ],
              ),
              Column(
                spacing: 16,
                children: [
                  Container(height: 80, child: Placeholder()),
                  Container(height: 80, child: Placeholder()),
                  Container(height: 80, child: Placeholder()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
