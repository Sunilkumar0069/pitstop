import 'package:flutter/material.dart';
import 'services.dart';
import 'dashboard.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class firstscreen extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Welcome to PitStop',
          ),
          backgroundColor: Color(0xF80684AE),
        ),
        drawer: dashboard(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/homeimg.jpeg',
                  height: 900,
                  width: 1000,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      );
}
