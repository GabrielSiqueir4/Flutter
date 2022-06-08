// ignore_for_file: prefer_const_constructors

import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuComponente(),
      appBar: AppBar(
        title: Text('Conta a Receber'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                RestService().getter("/time/list");
              },
              child: const Text('Bem vindo ao nosso Programa de Contas A Receber!'),
            )
          ],
        ),
      ),
    );
  }
}
