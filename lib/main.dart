import 'package:flutter/material.dart';
import './questao.dart';
import './desafio.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder(int qtdePerguntas) {
    print('Pergunta respondida ${perguntaSelecionada + 1}!');
    setState(() {
      if (perguntaSelecionada < qtdePerguntas - 1) {        
        perguntaSelecionada++;
      }
    });    
  } 

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'respostas': ['Branco', 'Preto', 'Azul', 'Vermelho']
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Elefante', 'Girafa']
      },
      {
        'texto': 'Qual seu nome favorito?',
        'respostas': ['Fábio', 'Priscila', 'Mariana', 'Bella']
      },
      {
        'texto': 'Qual seu esporte favorito?',
        'respostas': ['Futebol', 'Beisebol', 'Basquete', 'Tenis']
      }
    ];

    List<String> respostas = perguntas[perguntaSelecionada].cast()['respostas'];
    List<Widget> widgets = respostas
      .map((t) => Desafio(t, () => _responder(perguntas.length)))
      .toList();
    

    final List<String> captionBotoes = [
      'Primeiro Botão',
      'Segundo Botão',
      'Terceiro Botão',
      'Quarto Botão',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Questao('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            ...widgets
          ],
        ),
      )
    );
  }   
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
  


 
}
