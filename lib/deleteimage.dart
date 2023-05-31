import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_grid_view/image_grid_view.dart';
import 'package:image_picker/image_picker.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//  ---------------------------------------------------
 

//-------------------------------------------------------------------------------------
var image;
List imagearray=[];

  
  opengallary()async{
image = await ImagePicker().pickImage(source: ImageSource.camera);
imagearray.add(image);
setState(() {
  imagearray;
    });
    
    try {
      await image.delete();
      return true; 
    } catch ( e) {
      return false;
    }   
  }
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
                 child:Column(
                  children: [
                     Container(
                        height: MediaQuery.of(context).size.height*.2,//box inside the phone screen
                       // decoration: BoxDecoration(border: Border.all(width: 1)),
                       padding: EdgeInsets.all(5),
                        child: imagearray.isEmpty?Center(
                          child: Text("no image"))
                          :GridView.count(
                            crossAxisCount: 3,
                            children:List.generate(imagearray.length,( index)
                            {
                              var img=imagearray[index];
                           //  return Container(child: Image.file(img)); 
                            return Container(child: Image.file(File(img!.path))); 
                            }),),
                ),
                 
                    ElevatedButton.icon(
                  onPressed: () {
                    opengallary();
                  },
                  icon: Icon(Icons.camera_alt_outlined),
              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black),
               label:Text("upload photo",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 18,
                  ),)
                ),
                 ],
                 )    
                            ),
      )
                          
                    ),
             );
        
    
 }
}  
        
  
