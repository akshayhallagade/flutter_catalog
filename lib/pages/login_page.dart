// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import "package:flutter/material.dart";
import 'package:flutter_catalog/utilies/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 100.0,
          ),
          Image.asset("assests/images/login.png"),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(
              fontSize: 50,
              fontFamily: GoogleFonts.pacifico().fontFamily,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          // ElevatedButton(
          //   child: Text(
          //     "Login",
          //     style: TextStyle(fontSize: 20),
          //   ),
          //   style: TextButton.styleFrom(minimumSize: Size(100, 45)),
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          // ),
          InkWell(
            onTap: () async {
              setState(() {
                changebutton = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changebutton ? 50 : 100,
                height: 45,
                child: changebutton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  // shape: changebutton ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                )),
          ),
        ],
      ),
    );
  }
}
