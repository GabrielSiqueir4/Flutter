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
                    onPressed:() {},
                    child: Icon(Icons.close) ,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      backgroundColor: MaterialStateProperty.all(Colors.red)
                    ),),

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

 /* Widget dialogCadastro() {
    return Dialog(
      child: SizedBox(
        height: 1200,
        width: 900,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: contaEdit.descricao),
                onChanged: (value) => [contaEdit.descricao = value],
                decoration: const InputDecoration(
                  labelText: "Descrição",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: contaEdit.dtEmissao),
                onChanged: (value) => [contaEdit.dtEmissao = value],
                decoration: const InputDecoration(
                  labelText: "Emissão",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: contaEdit.dtVencimento),
                onChanged: (value) => [contaEdit.dtVencimento = value],
                decoration: const InputDecoration(
                  labelText: "Vencimento",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                controller:
                    TextEditingController(text: contaEdit.valor.toString()),
                onChanged: (value) => [contaEdit.valor = double.parse(value)],
                decoration: const InputDecoration(
                  labelText: "Valor",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
             /*TextField(
                keyboardType: TextInputType.text,
                controller:
                    TextEditingController(text: contaEdit.cliente?.nome),
                onChanged: (value) => [contaEdit.cliente?.id = "value"],
                decoration: const InputDecoration(
                  labelText: "Cliente",
                  border: OutlineInputBorder(),
                ),
              ),*/
              SizedBox(height: 10),
              /*TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(
                    text: contaEdit.formaDePagamento?.nomeFormaPgm),
                onChanged: (value) => [
                  contaEdit.formaDePagamento?.nomeFormaPgm = value,
                ],
                decoration: const InputDecoration(
                  labelText: "Forma de Pagamento",
                  border: OutlineInputBorder(),
                ),
              ),*/

              //20/06/2022 Luan Kusma
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                    [contaEdit.status = newValue];
                  });
                },
                items: <String>['Pago', 'Pendente']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              //20/06/2022 Luan Kusma

              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text: contaEdit.status),
                // onChanged: (value) => [contaEdit.status = value],
                decoration: const InputDecoration(
                  labelText: "Status",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),

             DropdownButton<FormaDePagamento>(
                  value: contaEdit.formaDePagamento,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (FormaDePagamento? newValue) {
                    setState(() {
                      contaEdit.formaDePagamento = newValue!;
                    });
                  },
                  items: composeListaFormaPgm()),

                  
             DropdownButton<Cliente>(
                  value: contaEdit.cliente,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (Cliente? newValue) {
                    setState(() {
                      contaEdit.cliente = newValue!;
                    });
                  },
                  items: composeListaCliente()),

              ElevatedButton(
                onPressed: () async {
                  try {
                    if (contaEdit.id == null)
                      await RestService().save('conta', contaEdit);
                    else {
                      await RestService().update('conta', contaEdit);
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
  }*/

  SimpleDialogItem(
      {required IconData icon,
      required MaterialColor color,
      required String text,
      required Null Function() onPressed}) {}


 
}
