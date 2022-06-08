// ignore_for_file: prefer_const_constructors

import 'package:contasreceber/model/cliente.dart';
import 'package:contasreceber/page/cliente_page.dart';
import 'package:contasreceber/page/formadepagamento_page.dart';
import 'package:contasreceber/page/home_page.dart';
import 'package:flutter/material.dart';
import 'conta_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, clild) {
        return MaterialApp(
            theme: ThemeData(
                primaryColor: Color.fromARGB(255, 88, 100, 255),
                brightness: Brightness.light),
            initialRoute: '/home',
            routes: {
              '/home': (context) => HomePage(),
              '/conta': (context) => ContaPage(),
              '/cliente': (context) => ClientePage(),
              '/formadepagamento': (context) => FormaDePagamento()
            });
      },
    );
  }
}

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
}
