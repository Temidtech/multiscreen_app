import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  Home() : super();

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    final isMobileLayout = shortestSide<600;
    final orientation = MediaQuery.of(context).orientation;


    return Scaffold(
      appBar: AppBar(
        title: Text("Freestyle"),
      ),
      body: isMobileLayout
          ? phoneUI(orientation)
          : tabletUI(orientation),
    );
  }
}

phoneUI(Orientation orientation) {
  return Container(
    color: Colors.blueAccent,
  );
}

tabletUI(Orientation orientation) {
  return Container(
    color: Colors.green,
  );
}
