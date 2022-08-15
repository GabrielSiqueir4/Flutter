

import 'dart:ui';

import 'package:aulayoutube/controllers/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
LoginController _controller = LoginController();



const LoginPage ({Key? key}) :super (key: key);

@override
Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      padding: EdgeInsets.all(28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.people, size:MediaQuery.of(context).size.height * 0.2),
          TextField(
            decoration: InputDecoration(
              label: Text('Login')
            ),
             onChanged: _controller.setLogin,
          ),
          TextField(
            decoration: InputDecoration(
              label: Text('Senha'),
            ),
            onChanged: _controller.setPass,
            obscureText: true,
          ),
          SizedBox(height: 15),
          ElevatedButton(onPressed: (){}, child: Text('Login'),),
          ],
      ),
    ),
  );
}
}