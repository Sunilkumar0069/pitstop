import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'fixit.dart';

class sos_response extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Services',
        ),
        backgroundColor: Color(0xF80684AE),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Center(
          child: Text(
            '\n\n\n\nYour request has been raised wait for the team to call you!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Center(
          child: Image.network(
            'https://previews.123rf.com/images/olegdudko/olegdudko1801/olegdudko180102033/93984157-woman-call-center-operator-on-dark-background.jpg',
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
