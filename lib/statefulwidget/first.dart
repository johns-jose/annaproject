
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home__page(),
    );
  }
}


class home__page extends StatefulWidget {
  const home__page({super.key});

  @override
  State<home__page> createState() => _home__pageState();
}

class _home__pageState extends State<home__page> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}