import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'dashboard.dart';

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Help',
        ),
        backgroundColor: Color(0xF80684AE),
      ),
      body: Center(
          child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xF80684AE),
                boxShadow: [
                  BoxShadow(),
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        '\n\nBuild Version: 1.0.1\n\nBuild Date: 27-07-2022',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Column(
                      children: [
                        Center(
                          child: RaisedButton(
                            color: Colors.black,
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => firstscreen(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ]))));
}
