// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'ListaTransferencias.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(
            title: Text('Transferencias'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_outlined),
          ),
        ),
      ),
    );


