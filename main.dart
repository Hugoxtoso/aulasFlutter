import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/botoes.dart';
import './perguntas.dart';

main() {
  runApp(aula3());
}

class aula3 extends StatefulWidget {
  @override
  State<aula3> createState() => _aula3State();
}

class _aula3State extends State<aula3> {
  var contador = 0;
  var texto = "sim";
  final perguntas = [
    "Você está interessado em aderir ao amumu faraó?",
    "Você está disposto a dedicar sua vida ao amumu faraó?",
    "Você está disposto a abandonar seus cosumes pelo amumu faraó?",
    "Você está disposto a doar todos os seus patrimonios ao amumu faraó?",
    "Parabéns, você agora é um seguidor de amumu faraó!"
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Projeto Aula 04"),
          ),
          body: Column(
            children: [
              Perguntas(perguntas[contador]),
              Botoes(
                () {
                  if (contador <= 2) {
                    setState(() {
                      contador:
                      contador++;
                    });
                  } else if (contador == 3) {
                    setState(() {
                      contador:
                      contador++;
                      texto = "Reiniciar";
                    });
                  } else if (contador == 4) {
                    setState(() {
                      contador:
                      contador = 0;
                      texto = "sim";
                    });
                  }
                },
                texto,
              ),
            ],
          )),
    );
  }
}
