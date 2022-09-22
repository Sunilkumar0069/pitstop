import 'dart:ui';

import 'package:flutter/material.dart';
import 'home.dart';
import 'dashboard.dart';
import 'car_service.dart';
import 'bike_service.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Services',
          ),
          backgroundColor: Color(0xF80684AE),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                '\n\n\n\nSelect your services needed!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/serviceimg.jpeg',
                width: 800,
                height: 300,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: RaisedButton(
                  color: Color(0xF80684AE),
                  child: Text(
                    'CAR SERVICE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => car_service(),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: RaisedButton(
                  color: Color(0xF80684AE),
                  child: Text(
                    'BIKE SERVICE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => bike_service()));
                  },
                ),
              ),
            ])
          ],
        ),
      );
}
