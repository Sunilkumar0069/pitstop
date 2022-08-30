import 'package:flutter/material.dart';
import 'package:loginpage/mycart.dart';
import 'login.dart';
import 'home.dart';
import 'services.dart';
import 'fixit.dart';
import 'help.dart';
import 'about.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(21),
          color: Color(0xF80684AE),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/logo6.png',
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              Text(
                "PitStop",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                "pitstop@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => firstscreen(),
                ));
          },
        ),
        ListTile(
            leading: Icon(Icons.home_repair_service_outlined),
            title: Text(
              'Services',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => secondpage(),
                  ));
            }),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text(
            'MyCart',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => mycart(),
                ));
          },
        ),
        ListTile(
          leading: Icon(Icons.car_crash),
          title: Text(
            'Fixit',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => fixit(),
                ));
          },
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text(
            'Help',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => help(),
                ));
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'About',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => about(),
                ));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'LogOut',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => login(),
                ));
          },
        ),
      ]),
    );
  }
}
