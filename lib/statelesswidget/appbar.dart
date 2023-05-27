import 'package:flutter/material.dart';


 void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Scaffold(
      appBar:AppBar(
        title:Text("Register your complaint"),
        centerTitle: true,

        //----------leading in left side
        leading:Icon(Icons.arrow_back),

        //actions
        actions:[
          IconButton(onPressed:(){},
           icon:Icon(Icons.arrow_back),
           ), //right side
        ],
      ),
     ),
    );
  }
}
