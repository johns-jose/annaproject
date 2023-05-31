

import 'package:flutter/material.dart';


 void main() {
  runApp(complaint());
}
class complaint extends StatefulWidget {
  const complaint({super.key});

  @override
  State<complaint> createState() => _complaintState();
}

class _complaintState extends State<complaint> {
String ? _radioVal;
String ? level;
  @override

  Widget build(BuildContext context) {
    return MaterialApp
    (
     home:  Scaffold
     (
      backgroundColor: Colors.black,
                      appBar: AppBar(
                         backgroundColor: Color.fromARGB(255, 241, 238, 238),

                         //leading 
                         leading:IconButton(onPressed: (){},
                          icon:Icon (Icons.arrow_back_ios,color:Colors.black ,)),
                
                           shape: RoundedRectangleBorder(
                            side: BorderSide(
                              
                              color: Color.fromARGB(136, 125, 93, 25)
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200)),
                             
                            
                          ),
                              bottom: PreferredSize(
                                preferredSize: Size.fromHeight(150),
                                child: Center(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                
                                          
                                          Text(" Register your complaint ",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,
                                          fontSize :30,fontWeight:FontWeight.w900),),
                                          
                                           CircleAvatar(
                                            child: Icon(Icons.app_registration,color:Colors.white ,),
                                            radius: 20,
                                               backgroundColor: Colors.black,            )
                                
                                
                                
                                        ],
                                      ),
                                      SizedBox(height: 100,)
                                    ],
                                  ),
                                )),
                          
                  
                      ),
        

                    body: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center( 
                    child: ListView(
                    children: [


            //--------------- name-----------------------------------------------------------
            Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField (
                     decoration: InputDecoration(
                         filled:true,
                         fillColor: Colors.white, 
                         hintText: "Enter your preferred username(optional)",
                         hintStyle: TextStyle(
                         fontStyle: FontStyle.italic,
                         color: Colors.black
                          ),
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),   
                          ),
                        ),
                  ),
              ),
            

 //---------------phone number-----------------------------------------------------
            Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: TextField(
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                     filled:true,
                     fillColor: Colors.white, 
                    // contentPadding: EdgeInsets.all(10),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                     ),
                     hintText: "Enter your phone number(optional)",
                     hintStyle: TextStyle(
                     fontStyle: FontStyle.italic,
                      color: Colors.black
                 ), 
                 ),
              ),
            ),
          
 //---------------------------any accident occur---------------------------------------------


           Padding(
                   padding: const EdgeInsets.all(10),
                   child: Container(
                   height: 60,
                   width: 50,
                   decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(100), 
                   ),
                   child: Row(
                   children: [ 
                   Row(
                   children: [
                   const Text(' Any accident occur:  ',
                   style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),
            ),
          Radio(
            value: "yes",
            groupValue: _radioVal,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  _radioVal = value;
                });
              }
            },
          ),
          const Text('Yes',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),),
          Radio(
            value: "no",
            groupValue: _radioVal,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  _radioVal = value;
                });
              }
            },
          ),
          const Text('No ',
          style: TextStyle(
             fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),),
        ],
      ),
                  ],
                  ),
                    ),
           ),

//--------------------------------------------descrption--------------------------------
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: TextField(
                        //  textAlignVertical: TextAlignVertical.top,
                        //   expands: true,
                        //   maxLines: null,         
                      decoration: InputDecoration(
                        filled:true,
                         fillColor: Colors.white, 
                      hintText:"Give descrption about your complaint",
                      hintStyle: TextStyle(           
            color: Colors.black,
            fontSize: 17,
            fontStyle:FontStyle.italic,
            fontWeight: FontWeight.w400,
            ),
                        contentPadding: EdgeInsets.all(50),
                         border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(40),
                                 ),
                                ),
                                ),),
                 

 //--------------danger level-------------------------------------------
            
             Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
              height: 80,
              width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(100), 
                ),
                child: Column(
                  children: [ 
                    const Text('Danger level:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),
            ),
                     Row(
        children: [
          
          Radio(
            value: "low",
            groupValue: level,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  level = value;
                });
              }
            },
          ),
          const Text('low',style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),),
          Radio(
            value: "medium",
            groupValue: level,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  level = value;
                });
              }
            },
          ),
          const Text('medium ',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),),
          Radio(
            value: "high",
            groupValue: level,
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  level = value;
                });
              }
            },
          ),
          const Text('high ',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 17,
            ),),
        ],
      ),
                  ],
                  ),
                    ),
           ),
                   
                    

 // --------------------------upload photo----------------------------------------------------------
                
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextButton.icon( 
                         style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                  fontSize: 20, 
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white)
                         ),    
                             //text button
                         onPressed:(){},
               icon:Icon(Icons.camera_alt_outlined),
               label: Text("upload photos",
               style: TextStyle(color: Colors.white),),
               ),
             ),
               

 //------------------------post---------------------------------------------------------------------------
            ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white),
              child:Text("post",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 18
                ),)
              ),
          ],
          ),
          ),
          
        ),
          
    ),
    );
  }
}
    