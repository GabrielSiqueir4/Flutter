import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({Key? key}) : super(key: key);

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuComponente(),
      appBar: AppBar(
        title: Text('Conta a Receber'),
      ),
      body: Row(
        children: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              RestService().getter("/time/list");
            },
            child: const Text('Cadastro de Pessoas'),
          )
        ],
      ),
    );
  }
}
