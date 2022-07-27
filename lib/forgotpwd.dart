import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'login.dart';
import 'signup.dart';

class forgotpwd extends StatelessWidget {
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
                  height: 20.0,
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
                  height: 0.0,
                ),
                ButtonTheme(
                    height: 0,
                    disabledColor: Colors.black12,
                    child: FlatButton(
                        child: Text(
                          '\n\nSet Password',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ),
                          );
                        })),
              ],
            )),
      ));
}
