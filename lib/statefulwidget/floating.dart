 
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
  int counter =0;
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






          //---------------------------------------------------------------------------------
          //---------------------------------------------------------------------------------
          //---------------------------floating



          //-----------floating action extended
          // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: (){}, 
          //   label: Text('share'),
          //   icon: Icon(Icons.share),
          //   ),









//-----------------floatingaction button--------------------------
           floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
           floatingActionButton: FloatingActionButton(
            onPressed:(){
              setState(() {
                counter++;
              });
            },
           foregroundColor: Colors.black,
           backgroundColor: Colors.green,
          mini: true,
           tooltip: 'share file',//long click in floating button
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),
           ),
           child:Icon(Icons.add) //Text("send"),
           ),
          
          body:Center(
            child:Text("$counter",style: TextStyle(
              fontSize: 30,
            ),)
             ),
          ),
    );
  }
} 