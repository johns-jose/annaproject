import 'package:flutter/material.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget>createState()=>_MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  
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