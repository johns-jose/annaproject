import '../screens/Product.dart';
import 'package:flutter/material.dart';
//import 'package:demos/statefulwidget/screens/Product.dart';
void main() {
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar:AppBar(
        title:Text("Register your complaint"),
        centerTitle: true,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:(){
            
                },
                 child:Text("product page", 
                 style: TextStyle(
                  fontSize: 20),
                  )),
              
            ],
            ),
        ),
      ),
      
     );
  }
}