import 'package:flutter/material.dart';

class MenuComponente extends StatelessWidget {
  const MenuComponente({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
        height: 20,
      ),
      const UserAccountsDrawerHeader(
        accountName: Text('Contas a Pagar'),
        accountEmail: Text(''),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        subtitle: const Text('Voltar para Home'),
        onTap: () {
          Navigator.of(context).pushNamed("/home");
        },
      ),
      ListTile(
        leading: const Icon(Icons.person_add),
        title: const Text('Cliente'),
        subtitle: const Text('Abrir Tela Cliente'),
        onTap: () {
          Navigator.of(context).pushNamed("/cliente");
        },
      ),
      ListTile(
        leading: const Icon(Icons.add_chart_outlined),
        title: const Text('Conta'),
        subtitle: const Text('Abrir Tela conta'),
        onTap: () {
          Navigator.of(context).pushNamed("/conta");
        },
      ),
      ListTile(
        leading: const Icon(Icons.monetization_on_outlined),
        title: const Text('Forma De Pagamento'),
        subtitle: const Text('Abrir Tela Forma de Pagamento'),
        onTap: () {
          Navigator.of(context).pushNamed("/formadepagamento");
        },
      ),
    ]));
  }
}
