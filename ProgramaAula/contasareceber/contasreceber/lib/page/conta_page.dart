import 'dart:js_util';

import 'package:contasreceber/components/app_Component.dart';
import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/model/cliente.dart';
/*import 'package:flutter/conta.dart';*/
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:contasreceber/model/conta.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class ContaPage extends StatefulWidget {
  const ContaPage({Key? key}) : super(key: key);

  @override
  State<ContaPage> createState() => _ContaPageState();
}

class _ContaPageState extends State<ContaPage> {
  List<Conta> conta = [];
  Conta contaEdit = new Conta();

  String dropdownValue = 'Pago';

  List<FormaDePagamento> formaPgm = [];
  FormaDePagamento formaPgmEdit = new FormaDePagamento();

  List<Cliente> cliente = [];
  Cliente clienteEdit = new Cliente();

  @override

  //Luan Kusma 20/06

  @override
  void initState() {
    init();
  }

  init() async {
    List list = await RestService().list('/conta/list', null);
    setState(() {
      conta = list.map((e) => Conta.fromJson(e)).toList();
    });
    carregaFrmPagamento();
  }

  carregaFrmPagamento() async {
    List list = await RestService().list('/formadepagamento/list', null);
    setState(() {
      formaPgm = list.map((e) => FormaDePagamento.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuComponente(),
      appBar: appComponent("Conta a Receber"),
      body: ListView(
        children: conta
            .map((e) => Card(
                    child: ListTile(
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.close),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder()),
                        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                  onTap: () async {
                    var param = {'id': e.id};
                    Navigator.of(context)
                        .pushNamed("/addconta", arguments: jsonEncode(param));
                  },
                  title: Text(e.descricao.toString()),
                  subtitle: Text(e.status.toString()),
                )))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () /*async =>*/ {
          //contaEdit = Conta(),
          //await showDialog(context: context, builder: (_) => dialogCadastro())
          Navigator.of(context).pushNamed("/addconta");
        },
        child: Icon(Icons.person_add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  SimpleDialogItem(
      {required IconData icon,
      required MaterialColor color,
      required String text,
      required Null Function() onPressed}) {}
}
