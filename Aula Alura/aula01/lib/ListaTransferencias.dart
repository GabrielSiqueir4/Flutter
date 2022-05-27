// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ItemTransferencia(Transferencia(100, 200)),
        ItemTransferencia(Transferencia(100, 200)),
        ItemTransferencia(Transferencia(100, 200)),
        ItemTransferencia(Transferencia(100, 200)),
      ],
    );
  }
}

// ignore: use_key_in_widget_constructors
class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on_rounded),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.valor.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
