import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.orange[100],
          fontFamily: 'Poppins'),
      home: LogInScreen(),
    );
  }
}
