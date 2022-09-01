import 'package:flutter/material.dart';
import 'package:loginpage/appointment_response.dart';
import 'package:loginpage/fixit.dart';
import 'package:loginpage/home.dart';
import 'car_service.dart';
import 'bike_service.dart';

class mycart extends StatelessWidget {
  mycart({
    required this.carnum,
    required this.carcompanyname,
    required this.carmodelname,
    required this.c_appointmentdate,
    required this.c_wash_service,
    required this.ac_service,
    required this.paint_service,
    required this.c_other_service,
    required this.bikenum,
    required this.bikecompanyname,
    required this.bikemodelname,
    required this.b_appointmentdate,
    required this.b_wash_service,
    required this.oil_service,
    required this.b_paint,
    required this.b_other_service,
  });

  String carnum,
      carcompanyname,
      carmodelname,
      c_appointmentdate,
      c_wash_service,
      ac_service,
      paint_service,
      c_other_service,
      bikenum,
      bikecompanyname,
      bikemodelname,
      b_appointmentdate,
      b_wash_service,
      oil_service,
      b_paint,
      b_other_service;

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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (carnum != "")
                            Text(
                              "Car Number: $carnum",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (carcompanyname != "")
                            Text(
                              "Company Name: $carcompanyname",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (carmodelname != "")
                            Text(
                              "Model Name: $carmodelname",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (c_appointmentdate != "")
                            Text(
                              "Appointment Date: $c_appointmentdate",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (c_wash_service != "")
                            Text(
                              "Wash Service: $c_wash_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (ac_service != "")
                            Text(
                              "AC Service: $ac_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (paint_service != "")
                            Text(
                              "Paint Service: $paint_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (c_other_service != "")
                            Text(
                              "Other Service: $c_other_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (bikenum != "")
                            Text(
                              "Bike Number: $bikenum",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (bikecompanyname != "")
                            Text(
                              "Company Name: $bikecompanyname",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (bikemodelname != "")
                            Text(
                              "Model Name: $bikemodelname",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (b_appointmentdate != "")
                            Text(
                              "Appointment Date: $b_appointmentdate",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (b_wash_service != "")
                            Text(
                              "Wash Service: $b_wash_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (oil_service != "")
                            Text(
                              "Oil Service: $oil_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (b_paint != "")
                            Text(
                              "Paint Service: $b_paint",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          if (b_other_service != "")
                            Text(
                              "Other Service: $b_other_service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          SizedBox(
                            height: 40.0,
                          ),
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
                  ),
                )
              ],
            )
          ],
        ),
      );
}
