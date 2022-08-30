import 'package:flutter/material.dart';
import 'package:loginpage/appointment_response.dart';
import 'package:loginpage/fixit.dart';
import 'package:loginpage/home.dart';
import 'car_service.dart';
import 'bike_service.dart';

class mycart extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'MyCart',
          ),
          backgroundColor: Color(0xF80684AE),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/image2.png',
              ),
            ),
            Center(
              child: Text(
                'Check the services you choose',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                    child: Container(
                  height: 600,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xF80684AE),
                    boxShadow: [
                      BoxShadow(),
                    ],
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 500.0,
                    ),
                    Column(children: [
                      ButtonTheme(
                          height: 30,
                          disabledColor: Colors.black12,
                          child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Fix Appointment',
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
                                    builder: (context) =>
                                        appointment_response(),
                                  ),
                                );
                              })),
                    ]),
                  ]),
                ))
              ],
            )
          ],
        ),
      );
}
