// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/model/cliente.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({Key? key}) : super(key: key);

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  List<Cliente> cliente = [];
  Cliente clienteedit = new Cliente();
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
      // floatingActionButton:
      body: ListView(
        children: cliente
            .map((e) => Card(
                    child: ListTile(
                  onTap: () async {
                    clienteedit = e; await showDialog(context: context, builder: (_) => dialogCadastro());
                  },
                  title: Text(
                    e.nome.toString(),
                  ),
                  subtitle: Text(e.cpf.toString()),
                )))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => {
          await showDialog(context: context, builder: (_) => dialogCadastro())
        },
        child: Icon(Icons.person_add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget dialogCadastro() {
    return SimpleDialog(
        children: [
    SimpleDialogItem(
      icon: Icons.account_circle,
      color: Colors.orange,
      text: 'user01@gmail.com',
      onPressed: () {
        Navigator.pop(context, 'user01@gmail.com');
      },
    ),
      ),
   
  }
}

SimpleDialogItem({required IconData icon, required MaterialColor color, required String text, required Null Function() onPressed}) {
}
