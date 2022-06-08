import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContaPage extends StatefulWidget {
  const ContaPage({Key? key}) : super(key: key);

  @override
  State<ContaPage> createState() => _ContaPageState();
}

class _ContaPageState extends State<ContaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuComponente(),
      appBar: AppBar(
         centerTitle: true,
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
            child: const Text('Cadastro de Contas'),
          )
        ],
      ),
    );
  }
}
