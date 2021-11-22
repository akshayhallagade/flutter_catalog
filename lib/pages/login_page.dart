import 'dart:ui';

import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assests/images/login.png"),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Username", labelText: "Username"),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter Password", labelText: "Password"),
          ),
          ElevatedButton(
            child: Text("Login"),
            style: ButtonStyle(
                // foregroundColor: TextButton.styleFrom(),
                ),
            onPressed: () {
              print("Hey Akshay");
            },
          )
        ],
      ),
    );
  }
}
