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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Positioned(child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back))),
              Positioned(child: Center(child: Text("CART")))]),
          ],
        ),
      ),
    );
  }
}
