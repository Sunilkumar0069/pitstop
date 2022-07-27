import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'login.dart';
import 'signup.dart';
import 'forgotpwd.dart';

class Admin_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xF80684AE),
          title: Text(
            'PitStop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Container(
              height: 700,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xF80684AE),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 02,
                    blurRadius: 06,
                  ),
                ],
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 0,
                      ),
                      Image.asset('assets/logo10.png'),
                      SizedBox(
                        height: 0,
                      ),
                      Text('',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: " Email Id:",
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          backgroundColor: Color(0xF80684AE)),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: " Password: ",
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          backgroundColor: Color(0xF80684AE)),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonTheme(
                          child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => firstscreen(),
                                  ),
                                );
                              })),
                      ButtonTheme(
                          child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'SignUp',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => signup(),
                                  ),
                                );
                              })),
                      ButtonTheme(
                          child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => forgotpwd(),
                                  ),
                                );
                              })),
                    ],
                  ),
                ],
              )),
        ),
      );
}
