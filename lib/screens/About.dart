import 'package:flutter/material.dart';

class Aboutscreen extends StatelessWidget {
  const Aboutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("about page"),
      ),
      body: Center(
        child: Text("about page",
        style: TextStyle(
          fontSize: 30,
        ),),
      ),
    );
  }
}