import 'package:flutter/material.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product page"),
      ),
      body: Center(
        child: Text("product page",
        style: TextStyle(
          fontSize: 40,
        ),),
      ),
    );
  }
}