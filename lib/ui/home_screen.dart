// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

import 'package:http_app/ui/results_screen.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController _username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(120.0))),
                child: Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Image.asset(
                      'assets/images/github.png',
                      height: 120.0,
                    ))),
            Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                    ),
                    TextField(
                      controller: _username,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)),
                          hintText: 'username',
                          labelText: 'username',
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black, // background
                          foregroundColor: Colors.white,
                          minimumSize: Size.fromHeight(50) // foreground
                          ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultsScreen(
                                    username: _username.value.text)));
                      },
                      child: Text(
                        'Pesquisar',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
