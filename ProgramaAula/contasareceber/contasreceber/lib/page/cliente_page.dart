// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:contasreceber/components/app_Component.dart';
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
  Cliente clienteEdit = new Cliente();
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
      appBar: appComponent("Conta a Receber"),
      // floatingActionButton:
      body: ListView(
        children: cliente
            .map((e) => Card(
                    child: ListTile(
                  onTap: () async {
                    clienteEdit = e;
                    await showDialog(
                        context: context, builder: (_) => dialogCadastro());
                  },
                  title: Text(
                    e.nome.toString(),
                  ),
                  subtitle: Text(
                    e.sobreNome.toString(),
                  ),
                )))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => {
          clienteEdit = Cliente(),
          await showDialog(context: context, builder: (_) => dialogCadastro())
        },
        child: Icon(Icons.person_add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget dialogCadastro() {
    return Dialog(
      child: SizedBox(
        height: 250,
        width: 450,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: clienteEdit.nome),
                onChanged: (value) => [clienteEdit.nome = value],
                decoration: const InputDecoration(
                  labelText: "Informe o Nome:",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: clienteEdit.sobreNome),
                onChanged: (value) => [clienteEdit.sobreNome = value],
                decoration: const InputDecoration(
                  labelText: "Informe o Sobrenome:",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: clienteEdit.cpf),
                onChanged: (value) => [clienteEdit.cpf = value],
                decoration: const InputDecoration(
                  labelText: "Informe o CPF:",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    if (clienteEdit.id == null)
                      await RestService().save('cliente', clienteEdit);
                    else {
                      await RestService().update('cliente', clienteEdit);
                    }
                    Navigator.pop(context);
                    init();
                  } catch (e) {
                    alerta(context, e.toString());
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SimpleDialogItem(
      {required IconData icon,
      required MaterialColor color,
      required String text,
      required Null Function() onPressed}) {}

  void alerta(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Atenção!'),
        content: Text(message),
      ),
    );
  }
}
