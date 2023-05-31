import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         home: Home()
      );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String?_radioVal; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Radio Button in Flutter"),
            backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Padding(

                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gender",
                              style: TextStyle(fontSize: 19),),
                            Row(
        children: [
          const Text('Gender:  '),
          Radio(
            value: "male",
            groupValue: _radioVal,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  _radioVal = value;
                });
              }
            },
          ),
          const Text('Male '),
          Radio(
            value: "female",
            groupValue: _radioVal,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  _radioVal = value;
                });
              }
            },
          ),
          const Text('Female '),
        ],
      ),

                          ],
                    ),
        ),
        
    );
  } 
}