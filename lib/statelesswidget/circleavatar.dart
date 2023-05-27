
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
      body:Center(
        child:Column(
          children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:CircleAvatar(
            radius: 150,
            backgroundColor: Colors.purple,
            child: CircleAvatar(
              radius: 100,
              backgroundColor:Colors.green,
              child: Text("sign in",
              style: TextStyle(
                fontSize: 20),),
                foregroundColor: Colors.white,
            
            ),
          ),
        ),
        //----------
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:CircleAvatar(
            radius: 80,
              child: Icon(
                Icons.verified,
                size: 50,),
            ),
          ),
        //-------------
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:CircleAvatar(
            radius: 80,
           //    backgroundColor: AssetImage(),
            ),
          ),
      ],
      ),
     ),
     ),
    );
  }
}
