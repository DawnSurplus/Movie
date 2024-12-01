import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
          "Movie Detail",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Movie Name"),
            SizedBox(height: 50,),
            Text("Movie Rate"),
            SizedBox(height: 50,),
            Text("Movie Abstract"),
            SizedBox(height: 50,),
            Text("Movie Genre"),
          ],
        ),
      ),
    );
  }
}