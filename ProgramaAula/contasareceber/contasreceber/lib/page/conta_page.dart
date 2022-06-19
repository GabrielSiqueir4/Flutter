import 'package:contasreceber/components/app_Component.dart';
import 'package:contasreceber/components/menu_componentes.dart';
/*import 'package:flutter/conta.dart';*/
import 'package:contasreceber/service/rest_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:contasreceber/model/conta.dart';
import 'package:flutter/material.dart';

class ContaPage extends StatefulWidget {
  const ContaPage({Key? key}) : super(key: key);

  @override
  State<ContaPage> createState() => _ContaPageState();
}

class _ContaPageState extends State<ContaPage> {
  List<Conta> conta = [];
  Conta contaEdit = new Conta();

  @override
  void initState() {
    init();
  }

  init() async {
    List list = await RestService().list('/conta/list', null);
    setState(() {
      conta = list.map((e) => Conta.fromJson(e)).toList();
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
                    onTap: () async {
                      contaEdit = e;
                      await showDialog(
                          context: context, builder: (_) => dialogCadastro());
                    },
                    title: Text(
                      e.descricao.toString(),
                    ),
                    subtitle: Text(
                      e.status.toString(),
                    ),
                  )))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => {
          contaEdit = Conta(),
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
        height: 600,
        width: 450,
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
                controller: TextEditingController(text: contaEdit.valor.toString()),
                onChanged: (value) => [contaEdit.valor = double.parse(value)],
                decoration: const InputDecoration(
                  labelText: "Valor",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller:
                    TextEditingController(text: "Cliente"),
                onChanged: (value) => [contaEdit.cliente!.id = "value"],
                decoration: const InputDecoration(
                  labelText: "Cliente",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller:
                    TextEditingController(text: contaEdit.formaDePagamento.toString()),
                onChanged: (value) => [contaEdit.descricao = value,],
                decoration: const InputDecoration(
                  labelText: "Forma de Pagamento",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),



              TextField(
                keyboardType: TextInputType.text,
                controller:
                    TextEditingController(text: contaEdit.status),
                onChanged: (value) => [contaEdit.status = value],
                decoration: const InputDecoration(
                  labelText: "Status",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 30),
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
