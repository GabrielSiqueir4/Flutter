

import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';

class FormaDePagamento extends StatefulWidget {
  const FormaDePagamento({Key? key}) : super(key: key);

  @override
  State<FormaDePagamento> createState() => _FormaDePagamentoState();
}

class _FormaDePagamentoState extends State<FormaDePagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuComponente(),
      appBar: AppBar(
         centerTitle: true,
        title: Text('Contas a Receber'),
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
            child: Text('Formas de Pagamento'),
          )
        ],
      ),
    );
  }
}
