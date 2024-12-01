import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Today's Movie",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Popular Movies"),
            
            SizedBox(
              height: 50,
            ),
            Text("Now in Cinemas"),
            
            SizedBox(
              height: 50,
            ),
            Text("Coming Soon"),          
          ],
        ),
      ),
    );
  }
}
