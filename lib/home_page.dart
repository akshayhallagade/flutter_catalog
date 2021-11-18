import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  int days = 15;
  String names = "Akshay's";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the $days days of tutorial to $names App"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
