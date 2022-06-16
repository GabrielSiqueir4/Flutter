// ignore_for_file: prefer_const_constructors
import 'dart:html';

import 'package:contasreceber/components/app_Component.dart';
import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/model/cliente.dart';
import 'package:contasreceber/page/app_page.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:contasreceber/global.dart' as globals;

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
      appBar: appComponent('Contas a Receber'),
      body: texto(),
    );
  }

  Widget texto() {
    return Container(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'Bem vindo ao Nosso Software de contas a receber!',
          style: TextStyle(fontSize: 30),
        ),
      ),
      
    );
  }

  Stack criaImage() {
    return Stack(
      children: [
        new Image.asset(
          'images/imagem.jpg',
          height: double.infinity,
          width: double.infinity,
          scale: 100,
        ),
        Positioned(
           bottom: 15.0,
           left: 20.0,
          child: Text('teste'),
         
         ),
      ],
    );
  }
}
