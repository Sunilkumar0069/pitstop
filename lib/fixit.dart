import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'sos_response.dart';

class fixit extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Fixit',
        ),
        backgroundColor: Color(0xF80684AE),
      ),
      body: Center(
        child: Container(
            height: 600,
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Center(
                child: Image.asset(
                  "assets/image3.png",
                  height: 100,
                  width: 500,
                  alignment: Alignment.topCenter,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      '!!! Incase of emergency only !!!',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  labelText: " Phone No: ",
                  labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      backgroundColor: Color(0xF80684AE)),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                children: [
                  Center(
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'SOS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      onPressed: () {
                        /*ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        );*/
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sos_response()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: Text(
                      '( NOTE:Wait for the response from the team )',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            ])),
      ));
}
