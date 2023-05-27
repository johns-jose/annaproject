import 'package:flutter/material.dart';
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool? ischecked =false;
  bool? ischecked2 =false;
  bool? ischecked3 =false;
  bool? ischecked4 =false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //---copy
              Checkbox(
                tristate: true,//it gives null state 3 states are available
                value: ischecked,
               onChanged: (val){
                setState(() {
                 ischecked =val; 
                });
               }),
               Checkbox(
                activeColor: Colors.yellow,
                checkColor:Colors.black,
                value: ischecked2,
               onChanged: (val){
                setState(() {
                 ischecked2 =val; 
                });
               }),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CheckboxListTile(
                  title: Text("any accident occur"),
                  subtitle: Text("on or off"),
                  tileColor: Colors.amber,
                  value: ischecked3,
                  onChanged:(val){
                    setState(() {
                      ischecked3=val; 
                    });
                 }),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CheckboxListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  title: Text("ant accident occur"),
                  subtitle: Text("on or off"),
                  tileColor: Colors.amber,
                  value: ischecked4,
                  onChanged:(val){
                    setState(() {
                      ischecked4=val; 
                    });
                    }),
                 ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CheckboxListTile(
                  controlAffinity:ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  title: Text("ant accident occur"),
                  subtitle: Text("on or off"),
                  tileColor: Colors.amber,
                  value: ischecked4,
                  onChanged:(val){
                    setState(() {
                      ischecked4=val; 
                    });
                 }),
               ),
            ],
          ),
        ),
      ),
    );
  }
}