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
                child: Image.network(
                  'https://i.pinimg.com/736x/2f/6a/9a/2f6a9ad2644a1e2aaf7594229d75877b.jpg',
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
