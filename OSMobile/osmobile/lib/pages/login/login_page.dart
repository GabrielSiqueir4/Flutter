// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool continueConectad;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff4D6CA3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 90.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 40,
                  ),
                ),
                Container(
                  child: Text(
                    'OS Mobile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 150)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(color: Colors.white, Icons.person),
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(color: Colors.white, Icons.lock),
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    CheckboxListTile(
                     
                      controlAffinity: ListTileControlAffinity.leading,
                      checkColor: Colors.white,
                      activeColor: Colors.orange,
                      contentPadding: EdgeInsets.only(right: 10),
                      onChanged: (value) async {},
                      value: true,
                      
                      title: Text(
                        textAlign: TextAlign.left,
                        'Lembrar E-mail',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
            Container(
              child: Text(
                style: TextStyle(fontSize: 12, color: Colors.white),
                'Desenvolvido por Inside Sistemas',
              ),
            ),

            /*SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text(style: TextStyle(color: Colors.orange), 'Entrar'),
              ),
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                print('gell');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text(
                  style: TextStyle(
                    
                    fontSize: 16, color: Colors.orange),
                  'Entrar'),
            ),
          ),

          /*child: CircularProgressIndicator(
              backgroundColor: Colors.yellow,
            ), */
        ),
      ),
    );
  }
}
