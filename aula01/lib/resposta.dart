// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoClicado;

  Resposta(this.texto, this.quandoClicado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // define que o botao seja infinito
      child: RaisedButton(
        textColor: Colors.white,
        color: Color.fromARGB(255, 35, 0, 188), // coloca a cor no fundo do botao
        child: Text(texto),
        onPressed: quandoClicado,
      ),
    );
  }
}
