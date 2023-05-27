import '../screens/Product.dart';
import 'package:flutter/material.dart';
// import 'package:demos/statefulwidget/screens/Product.dart';
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
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>const productScreen()));
    // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){ return productScreen();}));
                },
                 child:Text("product page", 
                 style: TextStyle(
                  fontSize: 20),
                  )),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.push(context, MaterialPageRoute( builder:(context) => Aboutscreen()));
              //   },
              //    child:Text("about page",
              //    style: TextStyle(
              //     fontSize: 30),
              //     )),
            ],
            ),
        ),
      ),
     );
  }
}