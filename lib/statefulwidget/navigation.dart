
import 'package:flutter/material.dart';
//import '../screens/About.dart';
import 'package:demos/screens/Product.dart';
void main() {
  runApp(myapp());
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
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