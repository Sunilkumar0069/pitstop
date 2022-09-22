import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'mycart.dart';

class appointment_response extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Appointment',
        ),
        backgroundColor: Color(0xF80684AE),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Center(
          child: Text(
            '\n\n\n\nAppointement for our service is successfully fixed!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Center(
          child: Image.asset(
            'assets/sosimg.png',
            width: 500,
            height: 400,
          ),
        ),
        SizedBox(
          height: 0.0,
        ),
        Column(children: [
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
        ]),
      ]));
}
