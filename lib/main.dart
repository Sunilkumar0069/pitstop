import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
import 'services.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: login(),
      );
}
