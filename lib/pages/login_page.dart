import "package:flutter/material.dart";
import 'package:flutter/painting.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
              fontSize: 30,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
