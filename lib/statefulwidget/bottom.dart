 
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int indexnum=0;
    List tabwidgets = [ 
      Text("home",style: TextStyle(fontSize: 40)),
      Text("profile",style: TextStyle(fontSize: 40)),
      Text("dashboard",style: TextStyle( fontSize: 40)),
      Text("settings",style: TextStyle(fontSize: 40)),
    ];

     @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          items:const[
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:"home",
              backgroundColor:Colors.lightBlue),

            BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label:"profile",
              backgroundColor:Colors.red),

            BottomNavigationBarItem(
              icon:Icon(Icons.dashboard),
              label:"dashboard",
              backgroundColor:Colors.lightBlue),

            BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              label:"settings",
              backgroundColor:Colors.lightBlue),
          ],
          iconSize: 30,
        //  selectedFontSize: 30,
      //  showSelectedLabels: false,//true- no change,false selected botton label will not show
      showUnselectedLabels: true, //label name can see
               currentIndex:indexnum,//to select items
                onTap:(int index) {
                  setState(() {
                    indexnum = index;
                  });          
                 },
          ),
          body:Center(
            child:tabwidgets.elementAt(indexnum),
             ),
          ),
    );
  }
} 