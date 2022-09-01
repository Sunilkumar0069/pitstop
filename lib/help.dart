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
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(),
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/logo6.png',
                        width: 400,
                        height: 200,
                      ),
                    ),
                    Center(
                      child: Text(
                        'Build Version: 2.0.7\n\nBuild Date: 01-09-2022\n\nEmail:pitstop@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xF80684AE),
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
                            color: Color(0xF80684AE),
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
