

import 'package:contasreceber/components/app_Component.dart';
import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/model/formadepagamento.dart';
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';

class FormaDePagamentoPage extends StatefulWidget {
  const FormaDePagamentoPage({Key? key}) : super(key: key);

  @override
  State<FormaDePagamentoPage> createState() => _FormaDePagamentoPageState();
  
 
}


class  _FormaDePagamentoPageState extends State<FormaDePagamentoPage> {
 List<FormaDePagamento> formaPgm = [];
  FormaDePagamento formaPgmEdit = new FormaDePagamento();
  @override
  void initState() {
    init();
  }

  init() async {
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
      // floatingActionButton:
      body: ListView(
        children: formaPgm
            .map((e) => Card(
                    child: ListTile(
                  onTap: () async {
                    formaPgmEdit = e;
                    await showDialog(
                        context: context, builder: (_) => dialogCadastro());
                  },
                  title: Text(
                    e.nomeFormaPgm.toString(),
                  ),
                  
                ),),)
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => {
          formaPgmEdit=FormaDePagamento(),
          await showDialog(context: context, builder: (_) => dialogCadastro())
        },
        child: Icon(Icons.monetization_on_outlined),
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
              SizedBox(height:60),
              TextField(
                keyboardType: TextInputType.text,
                controller: TextEditingController(text:formaPgmEdit.nomeFormaPgm),
                onChanged: (value) => [formaPgmEdit.nomeFormaPgm = value],
                decoration: const InputDecoration(
                  labelText: "Informe o Nome da Forma de Pagamento:",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  try {
                    if (formaPgmEdit.id == null)
                      await RestService().save('formadepagamento', formaPgmEdit);
                    else {
                      await RestService().update('formadepagamento', formaPgmEdit);
                    }
                    Navigator.pop(context);
                    init();
                  } catch (e) {
                    alerta(context, e.toString());
                  }
                },
                child: const Text('Salvar1'),
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