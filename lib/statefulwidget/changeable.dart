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
  var dsptext ="helloworld";
  var iconclrlike = Colors.black;
  var iconclrdlike = Colors.black;
//function here it shows gudmrng instead of helloworld when we click change text
void changetext(){ 
setState(() {
  dsptext="gudmrng";
});
}

void changeclrlike(){ 
setState(() {
  if(iconclrlike==Colors.black)
  {
    iconclrlike=Colors.blue;
  }
  else{
    iconclrlike=Colors.black;
  }
});
}

void changeclrdlike(){ 
setState(() {
  if(iconclrdlike==Colors.black)
  {
    iconclrdlike=Colors.blue;
  }
  else{
    iconclrdlike=Colors.black;
  }

});
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(dsptext,
              style: TextStyle(
                fontSize: 20),),
                //---copy
              ElevatedButton(
                onPressed:(){
                changetext();
              },
               child:Text("change text",
               style: TextStyle(fontSize: 30),
               ),
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      changeclrlike();
                    },
                    //----like
                   icon:Icon(Icons.thumb_up),
                iconSize:50,
                color: iconclrlike,
                  ),
                  //-----delike
                  IconButton(
                    onPressed: (){
                      changeclrdlike();
                    },
                   icon:Icon(Icons.thumb_down),
                iconSize:50,
                color: iconclrdlike,
                  ),
                ],
               ),
            ],
          ),
        ),
      ),
    );
  }
} 