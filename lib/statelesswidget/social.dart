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
      body: ListView(
        children: [
          //---------copy for next 
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("anna"),
                    subtitle: Text("23min ago"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,                  
                    ),
                    trailing: Icon(Icons.more_vert ),
                  ),
                  ListTile(
                    title: Text("cute puppy"),
                  ),
                  //Image.asset('imges/img1.jpg')
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {},icon: Icon(Icons.thumb_up)),
                      IconButton(onPressed: () {},icon: Icon(Icons.thumb_down)),
                      
          
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
     ),
    );
  }
}