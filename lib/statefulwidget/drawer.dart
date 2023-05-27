import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp>createState()=>_MyappState();
}

class _MyappState extends State<Myapp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blueGrey,
          child: ListView(
            children:  [
              UserAccountsDrawerHeader(
                accountName: Text("smith"),
                 accountEmail: Text("smith@gamil.com"),
                 currentAccountPicture: CircleAvatar(
                 // backgroundImage: AssetImage(image ),
                 backgroundColor: Colors.white,
                 ),
                 ),

                 
                 //------copy
                 ListTile(
                  leading:Icon(Icons.person),
                  iconColor: Colors.white,
                  onTap: () {
                    
                  },
                  title: Text("profile",
                  style: TextStyle(
                    fontSize: 20,
                  )
                  ),
                  textColor: Colors.white,
                 )
            ],
          ),
        ),
        body: null,
       
      ),
    );
  }
} 