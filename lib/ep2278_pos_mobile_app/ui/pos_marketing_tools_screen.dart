import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PosMarketingToolsScreen extends StatefulWidget {
  const PosMarketingToolsScreen({super.key});

  @override
  State<PosMarketingToolsScreen> createState() =>
      _PosMarketingToolsScreenState();
}

class _PosMarketingToolsScreenState extends State<PosMarketingToolsScreen> {
  ValueNotifier<bool> enableSms = ValueNotifier(false);
  ValueNotifier<bool> enableEmail = ValueNotifier(false);
  ValueNotifier<double>  sliderValue = ValueNotifier(0.4);

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
              Gap(2),
              Text(
                "Campaign Builder",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Container(
                height: 200,
                child: Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withValues(alpha: .18),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "10% Off",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Holiday Sale!",
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                // fontSize: 18,
                              ),
                            ),
                            Gap(16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ValueListenableBuilder(
                                  valueListenable: enableSms,
                                  builder: (context, value, child) {
                                    return Container(
                                      height: 88,
                                      width: 54,
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.black,
                                      ),
                                      padding: EdgeInsets.all(3),
                                      child: Stack(
                                        children: [
                                          AnimatedPositioned(
                                            top: value ? null : 0,
                                            bottom: value ? 0 : null,
                                            left: 0,
                                            right: 0,
                                            duration: Duration(
                                              milliseconds: 2000,
                                            ),
                                            curve: Curves.linear,
                                            child: GestureDetector(
                                              onTap: () {
                                                enableSms.value = !value;
                                              },
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundColor: Colors.white
                                                    .withValues(alpha: .3),
                                                foregroundColor: Colors.white,
                                                child: Icon(Icons.chat_outlined),

                                              ),
                                            ),
                                          ),
                                          if(!value)
                                          Positioned(
                                            bottom: 8,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Text(
                                                "Sms",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  height: 88,
                                  width: 54,
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.black,
                                  ),
                                  padding: EdgeInsets.all(3),
                                  child: ValueListenableBuilder(
                                    valueListenable: enableEmail,
                                    builder: (context, value, child) {
                                      return Stack(
                                        children: [
                                          AnimatedPositioned(
                                            top: value ? null : 0,
                                            bottom: value ? 0 : null,
                                            left: 0,
                                            right: 0,
                                            duration: Duration(milliseconds: 250),
                                            child: InkWell(
                                              onTap: () {
                                                enableEmail.value = !value;
                                              },
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundColor: Colors.white
                                                    .withValues(alpha: .3),
                                                foregroundColor: Colors.white,
                                                child: Icon(Icons.email_outlined),
                                              ),
                                            ),
                                          ),
                                          if(!value) Positioned(
                                            bottom: 8,
                                            left: 0,
                                            right: 0,
                                            child: Center(
                                              child: Text(
                                                "Email",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withValues(alpha: .18),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              spacing: 4,
                              children: [
                                Text(
                                  "10% Off",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Holiday Sale!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                    // fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Gap(16),
                            Text(
                              "All Customer",
                              style: TextStyle(color: Colors.white),
                            ),

                            Gap(12),
                            ValueListenableBuilder(
                              valueListenable: sliderValue,
                              builder: (context, value, child) {
                                return Slider(
                                  value:value,
                                  onChanged: (value) {
                                    sliderValue.value = value;
                                  },
                                  padding: EdgeInsets.zero,
                                  activeColor: Colors.yellow,
                                  thumbColor: Colors.lightGreenAccent,
                                  inactiveColor: Colors.black,
                                );
                              }
                            ),
                            Gap(16),
                            Row(
                              spacing: 12,
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.black,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Sms",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.black,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Email",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
                children:
                    List.generate(3, (idx) {
                      return SizedBox(
                        // height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.white.withValues(alpha: .2),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Row(
                            spacing: 12,
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                child: Icon(Icons.percent),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 6,
                                  children: [
                                    Text(
                                      "Discount Coupons",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "25 Dec 2022",
                                      style: TextStyle(
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Active",
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
