import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: GridView(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children:
                      .map((e) => FocusedMenuHolder(
                            menuWidth: MediaQuery.of(context).size.width * 0.50,
                            blurSize: 5.0,
                            menuItemExtent: 45,
                            menuBoxDecoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            duration: Duration(milliseconds: 100),
                            animateMenuItems: true,
                            blurBackgroundColor: Colors.black54,
                            bottomOffsetHeight: 100,
                            openWithTap: true,
                            menuItems: <FocusedMenuItem>[
                              FocusedMenuItem(
                                  title: Text("Open"),
                                  trailingIcon: Icon(Icons.open_in_new),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ScreenTwo()));
                                  }),
                              FocusedMenuItem(
                                  title: Text("Share"),
                                  trailingIcon: Icon(Icons.share),
                                  onPressed: () {}),
                              FocusedMenuItem(
                                  title: Text("Favorite"),
                                  trailingIcon: Icon(Icons.favorite_border),
                                  onPressed: () {}),
                              FocusedMenuItem(
                                  title: Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.redAccent),
                                  ),
                                  trailingIcon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  onPressed: () {}),
                            ],
                            onPressed: () {},
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Image.asset("assets/images/image_$e.jpg"),
                                ],
                              ),
                            ),
                          ))
                      .toList(),
                
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}