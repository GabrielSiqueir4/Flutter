

import 'package:contasreceber/components/app_Component.dart';
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
      appBar: appComponent("Conta a Receber"),
      body: Row(
        children: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
             
            },
            child: Text('Formas de Pagamento'),
          )
        ],
      ),
    );
  }
}
