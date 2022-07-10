import 'package:flutter/material.dart';
import 'package:osmobile/screens/login/login_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: LoginScreen(),
    );
  }
}

