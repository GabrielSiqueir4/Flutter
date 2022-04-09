// ignore_for_file: deprecated_member_use
import './resposta.dart';
import './questao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'resposta': ['azul', 'preto', 'branco'],
      },
      {
        'texto': 'Você Gosta De quais Animais?',
        'respostas': ['Cavalo', 'Cachorro', 'Leao'],
      },
      {
        'texto': 'qual seu professor favorito?',
        'respostas': ['joao', 'zeca', 'rafael'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(children: <Widget>[
          Questao(perguntas[perguntaSelecionada]['texto'].toString()),
          Resposta('Resposta 1', responder),
          Resposta('Resposta 2', responder),
          Resposta('Resposta 3', responder),
        ]),
      ),
    );
  }
  
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
