// ignore_for_file: prefer_const_constructors

import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/model/cliente.dart';
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
  List<Cliente> cliente = [];
  @override
  void initState() {
    init();
  }

  init() async {
    List list = await RestService().list('/cliente/list', null);
    setState(() {
      cliente = list.map((e) => Cliente.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuComponente(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Conta a Receber'),
        ),
        body: ListView(
            children: cliente
                .map((e) => Card(
                        child: ListTile(
                      title: Text(e.nome.toString(),
                      ),
                      subtitle: Text(e.cpf.toString()),
                    )))
                .toList()),);
  }
}
