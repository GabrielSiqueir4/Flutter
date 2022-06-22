import 'package:contasreceber/components/app_Component.dart';
import 'package:contasreceber/components/menu_componentes.dart';
import 'package:contasreceber/model/cliente.dart';
import 'package:contasreceber/model/conta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



import '../service/rest_service.dart';

class AddConta extends StatefulWidget {
  const AddConta({Key? key}) : super(key: key);

  @override
  State<AddConta> createState() => _AddContaState();
}

class _AddContaState extends State<AddConta> {
  Conta contaEdit = Conta();
  List<FormaDePagamento> formaPgm = [];
  List<DropdownMenuItem<String>> listaPgm = [];

  List<Cliente> cliente = [];
  List<DropdownMenuItem<String>> listaCli = [];

  String dropdownValue = 'Pago';

  String idFormaDePagamento = '';
  String idCliente = '';
  bool load = true;

  @override
  initState() {
    init();
  }

  init() async {
    await carregaFrmPagamento();
    await carregaCliente();
  }

  carregaFrmPagamento() async {
    List list = await RestService().list('/formadepagamento/list', null);
    setState(() {
      formaPgm = list.map((e) => FormaDePagamento.fromJson(e)).toList();
      formaPgm.add(FormaDePagamento());
      listaPgm = formaPgm
          .map<DropdownMenuItem<String>>((e) => DropdownMenuItem<String>(
              value: e.id == null ? '' : e.id,
              child: Text(e.nomeFormaPgm == null
                  ? 'Selecione'
                  : e.nomeFormaPgm.toString())))
          .toList();
    });
  }

  carregaCliente() async {
    List list = await RestService().list('/cliente/list', null);
    setState(() {
      formaPgm = list.map((e) => FormaDePagamento.fromJson(e)).toList();
      formaPgm.add(FormaDePagamento());
      listaPgm = formaPgm
          .map<DropdownMenuItem<String>>((e) => DropdownMenuItem<String>(
              value: e.id == null ? '' : e.id,
              child: Text(e.nomeFormaPgm == null
                  ? 'Selecione'
                  : e.nomeFormaPgm.toString())))
          .toList();
      load = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuComponente(),
        appBar: appComponent("Conta a Receber"),
        body: getBody());
  }

  getBody() {
    if (load) {
      return SizedBox(
        child: Text('carregando'),
      );
    } else {
      SizedBox(
        child: Row(
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

            InputDecorator(
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    labelText: 'Pais',
                    border: OutlineInputBorder()),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  value: idFormaDePagamento,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  hint: const Text('Pais'),
                  isExpanded: true,
                  onChanged: (any) {
                    setState(() {
                      contaEdit.formaDePagamento = formaPgm.firstWhere(
                          (element) => element.id == idFormaDePagamento);
                    });
                  },
                  items: listaPgm,
                ))),

            InputDecorator(
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    labelText: 'Pais',
                    border: OutlineInputBorder()),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  value: idCliente,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  hint: const Text('Pais'),
                  isExpanded: true,
                  onChanged: (any) {
                    setState(() {
                      contaEdit.cliente = cliente
                          .firstWhere((element) => element.id == idCliente);
                    });
                  },
                  items: listaCli,
                ))),

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
      );
    }
  }

  void alerta(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text('Atenção'),
              content: Text(message),
            ),
        barrierDismissible: true);
  }
}
