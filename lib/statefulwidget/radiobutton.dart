
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({Key?key}) :super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String ? gender;
  String ? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              color: Colors.cyanAccent,
              child: Column(
                children: [
                  Text("select your gender",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
                  ListTile(
                   title: Text("male"),
                   leading: Radio(
                       value: 'male',
                      groupValue: gender,
                         onChanged:(String?value){
                          setState(() {
                            gender =value; 
                          });
                        }),
                  ),


                  ListTile(
                    title: Text("female"),
                    leading: Radio(
                      value: 'female',
                       groupValue: gender,
                        onChanged:(String?value){
                          setState(() {
                            gender =value; 
                          });
                        }),
                  ),

                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("maratal status"),
                   RadioListTile(
                    title: Text("married"),
                    value: 'married',
                     groupValue: status,
                      onChanged:(String?value){
                    setState(() {
                      gender =value; 
                    });
                   }),
                ],
              ),
            ),
          ],
        ),
      ),
     );
    
  }
}
