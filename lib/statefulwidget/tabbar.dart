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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
        length:3,
        child:Scaffold(
          appBar:AppBar(
            bottom:TabBar(
              tabs:const [
              Tab(text:'chats'),
              Tab(text:'status'),
              Tab(text: 'chats')
              //Tab(icon:Icon(Icons.home)),
            ],
            indicatorColor:Colors.orange ,
            indicatorSize:TabBarIndicatorSize.tab,
            indicatorWeight:10,
            // box type indicator
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange),
            ),
          ),
          body: TabBarView(
            children:const [
            Center(child:Text('chats page', style: TextStyle( fontSize: 30))),
            Center(child:Text('status page', style: TextStyle( fontSize: 30))),
            Center(child:Text('call page', style: TextStyle( fontSize: 30))),
          ],
          ),
        ),
        ),
    );
  }
}